package com.vehicule.model;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

@Entity
@DiscriminatorValue(value = "camion")
public class Camion extends Vehicule {
    
    private int volume;

    public Camion() {
    }

    public Camion(String immatriculation, int volume) {
        super(immatriculation);
        this.volume = volume;
    }

    public int getVolume() {
        return volume;
    }

    public void setVolume(int volume) {
        this.volume = volume;
    }
}
