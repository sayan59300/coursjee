package com.magasinspring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServlet;

/**
 * Servlet implementation class ConnexionServlet
 */
@Controller
public class ConnexionController extends HttpServlet {

    @GetMapping(value = "/utilisateur/ajouter")
    public String ajouterUtilisateur() {
        return "/utilisateur/ajouter";
    }

    @GetMapping("/login")
    protected String login() {
        return "/security/login";
    }
}
