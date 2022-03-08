package com.magasinspring.controller;

import com.magasinspring.model.Utilisateur;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UtilisateurController {


    @GetMapping(value = "/utilisateur/ajouter")
    public String vueAjouter() {
        return "/utilisateur/ajouter";
    }

    @PostMapping(value = "/utilisateur/ajouter")
    protected void ajouter(@RequestParam(value = "nom") String pseudo) {

        Utilisateur user = new Utilisateur();
        user.setPseudo(pseudo);

    }
}
