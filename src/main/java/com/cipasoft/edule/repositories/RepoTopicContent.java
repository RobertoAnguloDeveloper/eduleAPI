package com.cipasoft.edule.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cipasoft.edule.models.TopicContent;

@Repository
public interface RepoTopicContent extends JpaRepository<TopicContent, Integer> {
    
}
