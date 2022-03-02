package com.stock.filter;

import com.stock.model.Utilisateur;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "UserFilter")
public class UserFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        HttpSession session = req.getSession();

        // on recupere le nom de la session
        Utilisateur connectedUser = (Utilisateur) session.getAttribute("user");
        // on recupere le chemin demandé par l'utilisateur
        String chemin = req.getServletPath();
        // on recupere la methode HTTP utilisee (GET ou POST)
        String methode = req.getMethod();

        if (connectedUser != null || chemin.equals("/") || chemin.equals("/index.jsp") || chemin.equals("/utilisateur/ajouter") || chemin.equals("/connexion") && methode.equals("POST")) {
            chain.doFilter(request, response);//on donne l'acces a la ressource demandée
        } else {
            res.sendRedirect(req.getContextPath());
        }
    }
}
