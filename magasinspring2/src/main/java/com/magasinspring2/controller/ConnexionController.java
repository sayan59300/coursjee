package com.magasinspring2.controller;

import com.magasinspring2.dao.UtilisateurRepository;
import com.magasinspring2.model.Utilisateur;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

/**
 * Controller de connexion
 */
@Controller
public class ConnexionController extends HttpServlet {

    @Autowired
    private UtilisateurRepository utilisateurRepository;

    @PostMapping("/login")
    protected RedirectView login(HttpSession session, @RequestParam(value = "login") String login) {

        Utilisateur user = new Utilisateur();
        Long id = Long.parseLong(login);
        user = utilisateurRepository.getById(id);

        long userid = user.getId();
        String userPseudo = user.getPseudo();

        session.setAttribute("userid", userid);
        session.setAttribute("userpseudo", userPseudo);
        Utilisateur connectedUser = new Utilisateur(userid, userPseudo);
        session.setAttribute("user", connectedUser);

        return new RedirectView("/");
    }

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
