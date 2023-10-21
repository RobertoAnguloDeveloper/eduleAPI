package com.cipasoft.edule.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cipasoft.edule.models.Classroom;

@Repository
public interface RepoClassroom extends JpaRepository<Classroom, Integer> {
    
}
