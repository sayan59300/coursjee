package com.cookie.filter;

import com.cookie.model.User;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Array;
import java.util.ArrayList;

/**
 * Servlet Filter implementation class UserFilter
 */
@WebFilter("/*")
public class UserFilter extends HttpFilter implements Filter {

    private static final long serialVersionUID = 1L;

    /**
     * @see HttpFilter#HttpFilter()
     */
    public UserFilter() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see Filter#destroy()
     */
    public void destroy() {
        // TODO Auto-generated method stub
    }

    /**
     * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
     */
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        HttpSession session = req.getSession();

        // on récupère le nom de la session
        User connectedUser = (User) session.getAttribute("user");
        // on récupère le cookie
        String userCookie = null;
        if ((((HttpServletRequest) request).getCookies()) != null) {
            for (Cookie cookie : ((HttpServletRequest) request).getCookies()) {
                if (cookie.getName().equals("userCookie")) userCookie = cookie.getValue();
            }
        }
        // on récupère le chemin demandé par l'utilisateur
        String chemin = req.getServletPath();
        // on récupère la methode HTTP utilisée (GET ou POST)
        String methode = req.getMethod();

        if (connectedUser != null || userCookie != null || chemin.equals("/") || chemin.equals("/index.jsp") || chemin.equals("/connexion") && methode.equals("POST")) {
            chain.doFilter(request, response);//on donne l'accès a la ressource demandé
        } else {
            res.sendRedirect(req.getContextPath());
        }

    }

    /**
     * @see Filter#init(FilterConfig)
     */
    public void init(FilterConfig fConfig) throws ServletException {
        // TODO Auto-generated method stub
    }

}
