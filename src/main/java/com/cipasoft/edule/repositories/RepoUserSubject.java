package com.cipasoft.edule.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cipasoft.edule.models.UserSubject;

@Repository
public interface RepoUserSubject extends JpaRepository<UserSubject, Integer> {
    
}
