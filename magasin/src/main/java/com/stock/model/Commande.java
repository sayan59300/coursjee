package com.stock.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
public class Commande {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private Date dateCommande = new Date();
    @ManyToOne(cascade = {CascadeType.PERSIST, CascadeType.REMOVE})
    private Utilisateur utilisateur;
    @OneToMany
    private List<ProduitCommande> produitsCommande = new ArrayList<ProduitCommande>();

    public Commande() {
    }

    public Commande(int id, Date dateCommande, Utilisateur utilisateur, List<ProduitCommande> produitsCommande) {
        this.id = id;
        this.dateCommande = dateCommande;
        this.utilisateur = utilisateur;
        this.produitsCommande = produitsCommande;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDateCommande() {
        return dateCommande;
    }

    public void setDateCommande(Date dateCommande) {
        this.dateCommande = dateCommande;
    }

    public Utilisateur getUtilisateur() {
        return utilisateur;
    }

    public void setUtilisateur(Utilisateur utilisateur) {
        this.utilisateur = utilisateur;
    }

    public List<ProduitCommande> getProduitsCommande() {
        return produitsCommande;
    }

    public void setProduitsCommande(List<ProduitCommande> produitsCommande) {
        this.produitsCommande = produitsCommande;
    }

    public Commande withId(int id) {
        this.id = id;
        return this;
    }

    public Commande withDateCommande(Date dateCommande) {
        this.dateCommande = dateCommande;
        return this;
    }

    public Commande withUtilisateur(Utilisateur utilisateur) {
        this.utilisateur = utilisateur;
        return this;
    }

    public Commande withProduitsCommande(List<ProduitCommande> produitsCommande) {
        this.produitsCommande = produitsCommande;
        return this;
    }
}
