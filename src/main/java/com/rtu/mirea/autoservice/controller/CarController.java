package com.rtu.mirea.autoservice.controller;

import com.rtu.mirea.autoservice.model.Car;
import com.rtu.mirea.autoservice.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.time.Year;

@Controller
@RequiredArgsConstructor
@RequestMapping("/api/car")
public class CarController {
    private final UserService userService;

    @PostMapping
    public String addCar(@Valid() @RequestParam(name = "issueYear") String year,
                         @Valid Car car) {
        car.setIssueYear(Year.parse(year));
        userService.addClientCar(car);
        return "redirect:/profile";
    }

}
