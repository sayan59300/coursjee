package com.vehicule.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Colis {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private int nature;

    public Colis() {
    }

    public int getId() {
        return id;
    }

    public int getNature() {
        return nature;
    }

    public void setNature(int nature) {
        this.nature = nature;
    }
}
