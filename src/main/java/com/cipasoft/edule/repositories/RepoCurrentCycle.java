package com.cipasoft.edule.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cipasoft.edule.models.CurrentCycle;

@Repository
public interface RepoCurrentCycle extends JpaRepository<CurrentCycle, Integer> {
    
}
