package com.cipasoft.edule.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cipasoft.edule.models.Student;

@Repository
public interface RepoStudent extends JpaRepository<Student, Integer> {
    
}
