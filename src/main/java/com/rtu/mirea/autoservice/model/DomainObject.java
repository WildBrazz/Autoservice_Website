package com.rtu.mirea.autoservice.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

@Getter
@Setter
@MappedSuperclass
public abstract class DomainObject {
    @Id
    @GeneratedValue
    private long id;
}
