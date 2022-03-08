package com.example.demo.controller;

import com.example.demo.dao.PersonneRepository;
import com.example.demo.model.Personne;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class PersonneController {
    @Autowired
    private PersonneRepository personneRepository;

    @GetMapping(value = "/personne/ajouter")
    public String addPerson() {
        return "ajoutPersonne";
    }

    @GetMapping(value = "/personne/liste")
    public ModelAndView listPerson(ModelAndView model) {
        List<Personne> personnes = personneRepository.findAll();
        model.addObject("personnes", personnes);
        model.setViewName("listePersonne");
        return model;
    }

    @PostMapping(value = "/personne/ajouter")
    public ModelAndView addPerson(ModelAndView model, @RequestParam(value = "nom") String nom, @RequestParam(value = "prenom") String prenom) {
        Personne p1 = new Personne(nom, prenom);
        personneRepository.save(p1);
        model.setViewName("confirm");
        model.addObject("nom", nom);
        model.addObject("prenom", prenom);
        return model;
    }
}
