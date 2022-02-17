package com.session.controller;

import com.session.model.Produit;
import com.session.model.Stock;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "listeProduit", value = "/liste-produit")
public class ListerProduitServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Produit> liste = Stock.getProduits();
        request.setAttribute("liste", liste);
        this.getServletContext().getRequestDispatcher("/WEB-INF/produit/listeProduits.jsp").forward(request, response);
    }
}
