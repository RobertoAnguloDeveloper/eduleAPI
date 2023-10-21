package com.cipasoft.edule.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cipasoft.edule.models.Day;

@Repository
public interface RepoDay extends JpaRepository<Day, Integer> {
    
}
