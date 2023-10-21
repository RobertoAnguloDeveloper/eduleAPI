package com.cipasoft.edule.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cipasoft.edule.models.SubjectClassroom;

@Repository
public interface RepoSubjectClassroom extends JpaRepository<SubjectClassroom, Integer> {
    
}
