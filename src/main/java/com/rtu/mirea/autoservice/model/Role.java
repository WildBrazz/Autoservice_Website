package com.rtu.mirea.autoservice.model;

import lombok.Getter;
import lombok.Setter;
import org.springframework.security.core.GrantedAuthority;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;

@Getter
@Setter
@Entity
public class Role extends DomainObject implements GrantedAuthority {
    @Enumerated(value = EnumType.STRING)
    private RoleName name;

    @Override
    public String getAuthority() {
        return name.toString();
    }
}
