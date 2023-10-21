package com.cipasoft.edule.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cipasoft.edule.models.HourDay;

@Repository
public interface RepoHourDay extends JpaRepository<HourDay, Long> {
    
}
