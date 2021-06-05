package com.rtu.mirea.autoservice.repo;

import com.rtu.mirea.autoservice.model.ServiceRequest;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ServiceRequestJpaRepository extends JpaRepository<ServiceRequest, Long> {
}
