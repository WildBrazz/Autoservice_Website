package com.rtu.mirea.autoservice.controller;

import com.rtu.mirea.autoservice.model.User;
import com.rtu.mirea.autoservice.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@RequiredArgsConstructor
@Controller
@RequestMapping("/api/user")
public class UserController {
    private final UserService userService;

    @PostMapping
    public String registration(@Valid User user) {
        userService.createClient(user);
        return "redirect:/login";
    }
}
