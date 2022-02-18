package com.session.controller;

import com.session.model.Produit;
import com.session.model.Stock;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Stock", value = "/stock")
public class StockServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String libelle = request.getParameter("libelle");
        double prix = Double.parseDouble(request.getParameter("prix"));
        String image = request.getParameter("image");
        Produit produit = new Produit(id, libelle, prix, image);
        Stock.ajouterProduit(produit);
        this.getServletContext().getRequestDispatcher("/liste-produit").forward(request, response);
    }
}
