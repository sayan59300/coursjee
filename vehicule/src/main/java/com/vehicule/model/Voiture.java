package com.vehicule.model;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

@Entity
@DiscriminatorValue(value = "voiture")
public class Voiture extends Vehicule {

    private int nombrePortes;

    public Voiture() {
    }

    public Voiture(String immatriculation, int nombrePortes) {
        super(immatriculation);
        this.nombrePortes = nombrePortes;
    }

    public int getNombrePortes() {
        return nombrePortes;
    }

    public void setNombrePortes(int nombrePortes) {
        this.nombrePortes = nombrePortes;
    }
}
