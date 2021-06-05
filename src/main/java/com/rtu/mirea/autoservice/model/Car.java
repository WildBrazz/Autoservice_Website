package com.rtu.mirea.autoservice.model;

import com.rtu.mirea.autoservice.model.utils.YearAttributeConverter;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Convert;
import javax.persistence.Entity;
import java.time.Year;

@Getter
@Setter
@Entity
public class Car extends DomainObject {
    private String name;
    private String vin;
    private String registrationNumber;
    @Convert(converter = YearAttributeConverter.class)
    private Year issueYear;
    private long mileage;
}
