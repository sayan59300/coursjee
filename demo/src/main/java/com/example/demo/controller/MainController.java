package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

    @GetMapping(value = "/")
    public String home() {
        return "home";
    }

    @GetMapping(value = "/calculatrice")
    public String calculatrice() {
        return "calculatrice";
    }

    @GetMapping(value = "/afficher/{prenom}/{nom}")
    public String calculatrice(Model model, @PathVariable("prenom") String prenom, @PathVariable("nom") String nom) {
        model.addAttribute("prenom");
        model.addAttribute("nom");
        return "affichePrenom";
    }

    @PostMapping(value = "/calculatrice")
    public ModelAndView calculer(ModelAndView model, @RequestParam("nb1") int nb1, @RequestParam("nb2") int nb2, @RequestParam("operateur") String operateur) {
        model.setViewName("calculatrice");
        double resultat = 0.0;

        if (operateur.equals("+")) {
            resultat = (double) (nb1 + nb2);
        } else if (operateur.equals("-")) {
            resultat = (double) (nb1 - nb2);
        } else if (operateur.equals("/")) {
            resultat = (double) (nb1 / nb2);
        } else if (operateur.equals("*")) {
            resultat = (double) (nb1 * nb2);
        }

        model.addObject("resultat", resultat);
        return model;
    }

}

