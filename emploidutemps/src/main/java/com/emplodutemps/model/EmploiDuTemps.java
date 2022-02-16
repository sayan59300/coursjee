package com.emplodutemps.model;

import java.io.*;
import java.util.ArrayList;

public class EmploiDuTemps implements Serializable {
    private static final String FILE_NAME = "C:\\Users\\sayaj\\Documents\\semaine.txt";
    private ArrayList<Creneau> semaine = new ArrayList<>();

    public EmploiDuTemps() {
    }

    public ArrayList<Creneau> getSemaine() {
        try {
            FileInputStream oldFile = new FileInputStream(FILE_NAME);
            ObjectInputStream oldObject = new ObjectInputStream(oldFile);
            semaine = (ArrayList<Creneau>) oldObject.readObject();
            oldObject.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return semaine;
    }

    /**
     * Ajoute un créneau au planning si il est disponible
     *
     * @param creneau
     */
    public void ajouterCreneau(Creneau creneau) {
        ArrayList<Creneau> semaineCourante = this.getSemaine();
        if (semaineCourante.isEmpty()) {
            if (creneau.getHeureFin() > creneau.getHeureDebut()) {
                semaineCourante.add(creneau);
            }
        } else {
            if (creneau.getHeureFin() > creneau.getHeureDebut()) {
                boolean ajoute = false;
                for (Creneau c : semaineCourante) {
                    if (creneau.getJour().equals(c.getJour())) {
                        if (
                                ((creneau.getHeureDebut() >= c.getHeureDebut()) || creneau.getHeureDebut() <= c.getHeureDebut())
                                        ||
                                        ((creneau.getHeureFin() >= c.getHeureFin()) || creneau.getHeureFin() <= c.getHeureFin())
                        ) {
                            semaineCourante.remove(c);
                            semaineCourante.add(creneau);
                            ajoute = true;
                            break;
                        }
                    }
                }
                if (!ajoute) {
                    semaineCourante.add(creneau);
                }
            }
        }
        serializeNouvelleListe(semaineCourante);
    }

    /**
     * serialize la nouvelle liste
     */
    private void serializeNouvelleListe(ArrayList<Creneau> nouvelleListe) {
        try {
            FileOutputStream file = new FileOutputStream(FILE_NAME);
            ObjectOutputStream object = new ObjectOutputStream(file);
            object.writeObject(nouvelleListe);
            object.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
