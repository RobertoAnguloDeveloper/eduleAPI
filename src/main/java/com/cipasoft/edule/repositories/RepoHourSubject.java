package com.cipasoft.edule.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cipasoft.edule.models.HourSubject;

@Repository
public interface RepoHourSubject extends JpaRepository<HourSubject, Integer> {
    
}
