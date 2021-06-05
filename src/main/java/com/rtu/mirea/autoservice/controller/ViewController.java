package com.rtu.mirea.autoservice.controller;

import com.rtu.mirea.autoservice.model.User;
import com.rtu.mirea.autoservice.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;

@Controller
@RequiredArgsConstructor
public class ViewController {
    private final UserService userService;

    @GetMapping("/profile")
    public ModelAndView profile(ModelAndView modelAndView) {
        User user = userService.getCurrentUser();
        modelAndView.addObject("user", user);
        modelAndView.setViewName("profile");
        return modelAndView;
    }

    @GetMapping
    public ModelAndView main(ModelAndView modelAndView) {
        modelAndView.addObject("services", new ArrayList<>());
        modelAndView.setViewName("main");
        return modelAndView;
    }
}
