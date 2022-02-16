package com.emplodutemps.model;

import java.io.Serializable;

public class Creneau implements Serializable{
    private final String jour;
    private final int heureDebut;
    private final int heureFin;
    private final String matiere;

    public Creneau(String jour, int heureDebut, int heureFin, String matiere) {
        this.jour = jour;
        this.heureDebut = heureDebut;
        this.heureFin = heureFin;
        this.matiere = matiere;
    }

    public String getJour() {
        return jour;
    }

    public int getHeureDebut() {
        return heureDebut;
    }

    public int getHeureFin() {
        return heureFin;
    }

    public String getMatiere() {
        return matiere;
    }
}
