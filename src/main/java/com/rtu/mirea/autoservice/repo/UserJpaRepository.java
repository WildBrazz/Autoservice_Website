package com.rtu.mirea.autoservice.repo;

import com.rtu.mirea.autoservice.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserJpaRepository extends JpaRepository<User, Long> {
    Optional<User> findByLogin(String login);
}
