package com.magasinspring2.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
public class Utilisateur {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String pseudo;
    @OneToMany(cascade = {CascadeType.PERSIST, CascadeType.REMOVE}, mappedBy = "utilisateur", fetch = FetchType.EAGER)
    private List<Commande> commandes = new ArrayList<Commande>();

    public Utilisateur(Long id, String pseudo) {
        this.id = id;
        this.pseudo = pseudo;
    }

    public Utilisateur() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
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

    public Utilisateur withId(Long id) {
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
