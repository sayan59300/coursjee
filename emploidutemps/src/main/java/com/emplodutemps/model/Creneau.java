package com.emplodutemps.model;

import java.io.Serializable;

public class Creneau implements Serializable {
    private final String jour;
    private final String heureDebut;
    private final String heureFin;
    private final String matiere;

    public Creneau(String jour, String heureDebut, String heureFin, String matiere) {
        this.jour = jour;
        this.heureDebut = heureDebut;
        this.heureFin = heureFin;
        this.matiere = matiere;
    }

    public String getJour() {
        return jour;
    }

    public String getHeureDebut() {
        return heureDebut;
    }

    public String getHeureFin() {
        return heureFin;
    }

    public String getMatiere() {
        return matiere;
    }
}
