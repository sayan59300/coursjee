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
    @OneToMany(cascade = {CascadeType.PERSIST, CascadeType.REMOVE}, mappedBy = "commande")
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

    public boolean before(Date when) {
        return dateCommande.before(when);
    }

    public boolean after(Date when) {
        return dateCommande.after(when);
    }

    public int compareTo(Date anotherDate) {
        return dateCommande.compareTo(anotherDate);
    }

    public int size() {
        return produitsCommande.size();
    }

    public boolean addProduitsCommande(ProduitCommande produitCommande) {
        return produitsCommande.add(produitCommande);
    }

    public boolean removeProduitsCommande(ProduitCommande produitCommande) {
        return produitsCommande.remove(produitCommande);
    }
}
