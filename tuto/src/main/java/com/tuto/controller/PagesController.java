package com.tuto.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.View;

@Controller
public class PagesController {

    @GetMapping("/")
    public String home () {
        return "home";
    }

    @GetMapping("/page-test")
    public String pageTest () {
        return "page-test";
    }

}
