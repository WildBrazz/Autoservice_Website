package com.rtu.mirea.autoservice.model;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;

@Entity
public class Role extends DomainObject {
    @Enumerated(value = EnumType.STRING)
    private RoleName name;
}
