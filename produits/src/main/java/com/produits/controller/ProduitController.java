package com.produits.controller;

import com.produits.dao.ProduitRepository;
import com.produits.model.Produit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
public class ProduitController {

    @Autowired
    ProduitRepository produitRepository;

    @GetMapping(value = "/produit")
    public ModelAndView home(ModelAndView model) {
        List<Produit> produits = produitRepository.findAll();
        model.addObject("produits", produits);
        model.setViewName("produit/index");
        return model;
    }

    @PostMapping(value = "/produit/ajouter")
    public RedirectView ajouter(@RequestParam(value = "nom") String nom, @RequestParam(value = "prix") double prix) {
        Produit produit = new Produit();
        produit.setNom(nom);
        produit.setPrix(prix);
        produitRepository.save(produit);
        return new RedirectView("/produit");
    }

}
