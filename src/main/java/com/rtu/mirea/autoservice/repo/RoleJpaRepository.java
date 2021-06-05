package com.rtu.mirea.autoservice.repo;

import com.rtu.mirea.autoservice.model.Role;
import com.rtu.mirea.autoservice.model.RoleName;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleJpaRepository extends JpaRepository<Role, Long> {
    Role getByName(RoleName name);
}
