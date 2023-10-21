package com.cipasoft.edule.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cipasoft.edule.models.Hour;

@Repository
public interface RepoHour extends JpaRepository<Hour, Integer> {
    
}
