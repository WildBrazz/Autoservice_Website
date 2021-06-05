package com.rtu.mirea.autoservice.service;

import com.rtu.mirea.autoservice.model.Car;
import com.rtu.mirea.autoservice.model.User;
import com.rtu.mirea.autoservice.repo.RoleJpaRepository;
import com.rtu.mirea.autoservice.repo.UserJpaRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import static com.rtu.mirea.autoservice.model.RoleName.CLIENT;
import static java.util.Collections.singleton;

@Service
@RequiredArgsConstructor
public class UserService implements UserDetailsService {
    private final UserJpaRepository userRepository;
    private final RoleJpaRepository roleRepository;

    @Transactional
    public void createClient(User user) {
        String[] fullName = user.getFullName().split("\\s");
        user.setShortName(fullName.length > 1 ? fullName[1] + " " + fullName[0] : fullName[0]);
        user.setRoles(singleton(roleRepository.getByName(CLIENT)));
        user.setActive(true);
        userRepository.save(user);
    }

    @Transactional
    public void addClientCar(Car car) {
        User currentUser = getCurrentUser();
        currentUser.getOwnedCars().add(car);
        userRepository.save(currentUser);
    }

    @Override
    @Transactional(readOnly = true)
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        return userRepository.findByLogin(username)
                .orElseThrow(() -> new UsernameNotFoundException("Пользователь с указанным логином не найден"));
    }

    @Transactional(readOnly = true)
    public User getCurrentUser() {
        User principal = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        return (User) loadUserByUsername(principal.getUsername());
    }
}
