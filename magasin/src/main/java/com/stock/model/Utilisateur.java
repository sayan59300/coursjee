package com.stock.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
public class Utilisateur {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String pseudo;
    @OneToMany(cascade = {CascadeType.PERSIST, CascadeType.REMOVE}, mappedBy = "utilisateur")
    private List<Commande> commandes = new ArrayList<Commande>();

    public Utilisateur(int id, String pseudo) {
        this.id = id;
        this.pseudo = pseudo;
    }

    public Utilisateur() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPseudo() {
        return pseudo;
    }

    public void setPseudo(String pseudo) {
        this.pseudo = pseudo;
    }

    public List<Commande> getCommandes() {
        return commandes;
    }

    public void setCommandes(List<Commande> commandes) {
        this.commandes = commandes;
    }

    public Utilisateur withId(int id) {
        this.id = id;
        return this;
    }

    public Utilisateur withPseudo(String pseudo) {
        this.pseudo = pseudo;
        return this;
    }

    public Utilisateur withCommandes(List<Commande> commandes) {
        this.commandes = commandes;
        return this;
    }
}
