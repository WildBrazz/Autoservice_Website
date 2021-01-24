package com.rtu.mirea.autoservice.model;

import javax.persistence.*;

@Entity
public class Service extends DomainObject {
    @Enumerated(value = EnumType.STRING)
    private ServiceName name;
    private long cost;
    @ManyToOne
    @JoinColumn(name = "service_request_id")
    private ServiceRequest serviceRequest;
    @ManyToOne
    @JoinColumn(name = "master_id")
    private User master;
}
