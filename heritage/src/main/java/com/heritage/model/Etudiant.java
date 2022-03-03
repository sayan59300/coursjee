package com.heritage.model;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

@Entity
@DiscriminatorValue(value = "etu")
public class Etudiant extends Personne {

    private String niveau;

    public Etudiant() {
    }

    public Etudiant(String nom, String prenom, String niveau) {
        super(nom, prenom);
        this.niveau = niveau;
    }

    public String getNiveau() {
        return niveau;
    }

    public void setNiveau(String niveau) {
        this.niveau = niveau;
    }

    public Etudiant withNiveau(String niveau) {
        this.niveau = niveau;
        return this;
    }
}
