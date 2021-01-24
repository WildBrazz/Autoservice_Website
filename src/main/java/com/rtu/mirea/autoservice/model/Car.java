package com.rtu.mirea.autoservice.model;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.time.Year;

@Entity
public class Car extends DomainObject {
    private String vin;
    private String registrationNumber;
    private Year issueYear;
    private long mileage;
    @ManyToOne
    @JoinColumn(name = "owner_id")
    private User owner;
}
