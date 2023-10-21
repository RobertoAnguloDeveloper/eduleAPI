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
    private RepoTopic repoTopic;

    public List<Topic> getAllTopics() {
        return repoTopic.findAll();
    }

    public Optional<Topic> getTopicById(Integer id) {
        return repoTopic.findById(id);
    }

    public Topic createTopic(Topic topic) {
        return repoTopic.save(topic);
    }

    public Topic updateTopic(Topic topic) {
        return repoTopic.save(topic);
    }

    public void deleteTopic(Integer id) {
        repoTopic.deleteById(id);
    }
}
