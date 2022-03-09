package com.magasinspring2.dao;

import com.magasinspring2.model.ProduitCommande;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProduitCommandeRepository extends JpaRepository<ProduitCommande, Long> {
}