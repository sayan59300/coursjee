package com.emplodutemps.model;

import java.io.Serializable;
import java.util.ArrayList;

public class EmploiDuTemps implements Serializable {
    private final ArrayList<Creneau> semaine = new ArrayList<>();

    public EmploiDuTemps() {
    }

    public ArrayList<Creneau> getSemaine() {
        return semaine;
    }

    public void ajouterCreneau(Creneau creneau) {
        this.semaine.add(creneau);
    }
}
