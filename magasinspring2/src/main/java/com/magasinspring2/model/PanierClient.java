package com.magasinspring2.model;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;

public class PanierClient {

    private HttpSession session;
    private ArrayList<Panier> paniersClient = new ArrayList<>();

    public PanierClient() {
    }

    public PanierClient(HttpSession session) {
        this.session = session;
    }

    public ArrayList<Panier> getPaniersClient() {
        return paniersClient;
    }

    public PanierClient setPaniersClient(ArrayList<Panier> panierClient) {
        this.paniersClient = panierClient;
        return this;
    }

    /**
     * Ajoute un panier dans le panier client
     *
     * @param panier
     */
    public void ajouterPanier(Panier panier) {
        boolean change = false;
        if (session.getAttribute("paniers") != null) {
            paniersClient = (ArrayList<Panier>) session.getAttribute("paniers");
            for (Panier p : paniersClient) {
                if (panier.getProduit().getId() == p.getProduit().getId()) {
                    if (panier.getQuantite() < 1) {
                        paniersClient.remove(p);
                        change = true;
                        break;
                    }
                    p.setQuantite(panier.getQuantite());
                    change = true;
                    break;
                }
            }
        }
        if (!change) {
            paniersClient.add(panier);
        }
        session.setAttribute("paniers", paniersClient);
    }
}
