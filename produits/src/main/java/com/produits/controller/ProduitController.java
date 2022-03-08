package com.produits.controller;

import com.produits.dao.ProduitRepository;
import com.produits.model.Produit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class ProduitController {

    @Autowired
    ProduitRepository produitRepository;

    @GetMapping(value = "/produit", name = "indexProduit")
    public ModelAndView home(ModelAndView model) {
        List<Produit> produits = produitRepository.findAll();
        model.addObject("produits", produits);
        model.setViewName("produit/index");
        return model;
    }

    @PostMapping(value = "/produit/ajouter", name = "indexProduit")
    public ModelAndView ajouter(ModelAndView model) {
        String nom = "nom";
        Produit produit = new Produit();
        produit.setNom(nom);

        return model;
    }

}
