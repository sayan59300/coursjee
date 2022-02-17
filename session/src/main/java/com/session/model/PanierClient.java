package com.session.model;

import java.util.ArrayList;

public class PanierClient {

    private ArrayList<Panier> panierClient = new ArrayList<>();

    public PanierClient() {
    }

    public ArrayList<Panier> getPanierClient() {
        return panierClient;
    }

    public void setPanierClient(ArrayList<Panier> panierClient) {
        this.panierClient = panierClient;
    }
}
