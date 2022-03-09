package com.magasinspring2.controller;

import com.magasinspring2.dao.UtilisateurRepository;
import com.magasinspring2.model.Utilisateur;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

/**
 * Controlleur utilisateur
 */
@Controller
public class UtilisateurController {

    @Autowired
    private UtilisateurRepository utilisateurRepository;

    @GetMapping(value = "/utilisateur/ajouter")
    public String vueAjouter() {
        return "/utilisateur/ajouter";
    }

    @PostMapping(value = "/utilisateur/ajouter")
    protected RedirectView ajouter(@RequestParam(value = "pseudo") String pseudo) {
        Utilisateur user = new Utilisateur();
        user.setPseudo(pseudo);
        utilisateurRepository.save(user);
        return new RedirectView("/");
    }
}
