package com.cipasoft.edule.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cipasoft.edule.models.Parent;

@Repository
public interface RepoParent extends JpaRepository<Parent, Integer> {
    
}
