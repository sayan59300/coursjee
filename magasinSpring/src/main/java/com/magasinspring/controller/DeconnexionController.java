package com.magasinspring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpSession;

/**
 * Controller de deconnexion
 */
@Controller
public class DeconnexionController {

    @GetMapping("/deconnexion")
    public RedirectView deconnexion(HttpSession session) {
        session.invalidate();
        return new RedirectView("/");
    }

    @PostMapping("/deconnexion")
    public RedirectView postDeconnexion(HttpSession session) {
        session.invalidate();
        return new RedirectView("/");
    }

}
