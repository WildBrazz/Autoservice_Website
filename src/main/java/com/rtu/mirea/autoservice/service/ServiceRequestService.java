package com.rtu.mirea.autoservice.service;

import com.rtu.mirea.autoservice.repo.ServiceRequestJpaRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ServiceRequestService {
    private final ServiceRequestJpaRepository serviceRequestRepository;


}
