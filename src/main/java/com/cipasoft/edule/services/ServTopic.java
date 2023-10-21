package com.cipasoft.edule.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cipasoft.edule.models.Topic;
import com.cipasoft.edule.repositories.RepoTopic;

import java.util.List;
import java.util.Optional;

@Service
public class ServTopic {
    @Autowired
    private RepoTopic classRepository;

    public List<Topic> getAllTopics() {
        return classRepository.findAll();
    }

    public Optional<Topic> getTopicById(Long id) {
        return classRepository.findById(id);
    }

    public Topic createTopic(Topic topic) {
        return classRepository.save(topic);
    }

    public Topic updateTopic(Topic topic) {
        return classRepository.save(topic);
    }

    public void deleteTopic(Long id) {
        classRepository.deleteById(id);
    }
}
