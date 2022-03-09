package com.magasinspring2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * MainController
 */
@Controller
public class MainController {

    @GetMapping(value = "/")
    public String index() {
        return "index";
    }

    @GetMapping(value = "/utilisateur")
    public String ajouter() {
        return "/utilisateur/ajouter";
    }

}
