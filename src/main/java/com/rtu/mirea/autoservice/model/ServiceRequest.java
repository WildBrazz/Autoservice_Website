package com.rtu.mirea.autoservice.model;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class ServiceRequest extends DomainObject {
    private long cost;
    private boolean completed;
    @ManyToOne
    @JoinColumn(name = "client_id")
    private User client;
    @ManyToOne
    @JoinColumn(name = "master_id")
    private User master;
}
