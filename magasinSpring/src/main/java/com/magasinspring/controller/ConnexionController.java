package com.magasinspring.controller;

import com.magasinspring.dao.UtilisateurRepository;
import com.magasinspring.model.Utilisateur;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
    UtilisateurRepository utilisateurRepository;

    @PostMapping("/login")
    protected RedirectView login(HttpSession session, @RequestParam(value = "login") String login) {

        Utilisateur user = new Utilisateur();
        int id = Integer.parseInt(login);
        user = utilisateurRepository.getById(id);

        int userid = user.getId();
        String userPseudo = user.getPseudo();

        session.setAttribute("userid", userid);
        session.setAttribute("userpseudo", userPseudo);
        Utilisateur connectedUser = new Utilisateur(userid, userPseudo);
        session.setAttribute("user", connectedUser);

        return new RedirectView("/");
    }

}
