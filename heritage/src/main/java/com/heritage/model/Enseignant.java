package com.heritage.model;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

@Entity
@DiscriminatorValue(value = "ens")
public class Enseignant extends Personne {

    private int salaire;

    public Enseignant() {
    }

    public Enseignant(String nom, String prenom, int salaire) {
        super(nom, prenom);
        this.salaire = salaire;
    }

    public int getSalaire() {
        return salaire;
    }

    public void setSalaire(int salaire) {
        this.salaire = salaire;
    }

    public Enseignant withSalaire(int salaire) {
        this.salaire = salaire;
        return this;
    }
}
