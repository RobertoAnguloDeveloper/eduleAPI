package com.cipasoft.edule.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cipasoft.edule.models.TopicContent;
import com.cipasoft.edule.repositories.RepoTopicContent;

import java.util.List;
import java.util.Optional;

@Service
public class ServTopicContent {
    @Autowired
    private RepoTopicContent classContentRepository;

    public List<TopicContent> getAllTopicContents() {
        return classContentRepository.findAll();
    }

    public Optional<TopicContent> getTopicContentById(Integer id) {
        return classContentRepository.findById(id);
    }

    public TopicContent createTopicContent(TopicContent classContent) {
        return classContentRepository.save(classContent);
    }

    public TopicContent updateTopicContent(TopicContent classContent) {
        return classContentRepository.save(classContent);
    }

    public void deleteTopicContent(Integer id) {
        classContentRepository.deleteById(id);
    }
}
