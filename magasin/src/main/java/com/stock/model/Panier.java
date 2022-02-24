package com.stock.model;

public class Panier {
    private Produit produit = new Produit();
    private int quantite = 0;

    public Panier() {
    }

    public Panier(Produit produit, int quantite) {
        this.produit = produit;
        this.quantite = quantite;
    }

    public Produit getProduit() {
        return produit;
    }

    public Panier setProduit(Produit produit) {
        this.produit = produit;
        return this;
    }

    public int getQuantite() {
        return quantite;
    }

    public Panier setQuantite(int quantite) {
        this.quantite = quantite;
        return this;
    }
}
