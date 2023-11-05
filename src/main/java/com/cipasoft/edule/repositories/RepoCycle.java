package com.cipasoft.edule.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cipasoft.edule.models.Cycle;

@Repository
public interface RepoCycle extends JpaRepository<Cycle, Integer> {
    
}
