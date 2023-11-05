package com.cipasoft.edule.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cipasoft.edule.models.Schedule;

@Repository
public interface RepoSchedule extends JpaRepository<Schedule, Integer> {
    
}
