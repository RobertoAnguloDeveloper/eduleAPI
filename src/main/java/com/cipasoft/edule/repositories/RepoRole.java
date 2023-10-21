package com.cipasoft.edule.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cipasoft.edule.models.Role;

@Repository
public interface RepoRole extends JpaRepository<Role, Integer> {
    
}
