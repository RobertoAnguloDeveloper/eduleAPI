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
    private RepoTopic topicRepository;

    public List<Topic> getAllTopics() {
        return topicRepository.findAll();
    }

    public Optional<Topic> getTopicById(Integer id) {
        return topicRepository.findById(id);
    }

    public Topic createTopic(Topic topic) {
        return topicRepository.save(topic);
    }

    public Topic updateTopic(Topic topic) {
        if (topic != null && topic.getId() != null) {
            Optional<Topic> existingTopic = topicRepository.findById(topic.getId());

            if (existingTopic.isPresent()) {
                Topic updatedTopic = existingTopic.get();

                if (topic.getTopic_name() != null) {
                    updatedTopic.setTopic_name(topic.getTopic_name());
                }
                if (topic.getDescription() != null) {
                    updatedTopic.setDescription(topic.getDescription());
                }
                if (topic.getSubject() != null) {
                    updatedTopic.setSubject(topic.getSubject());
                }

                return topicRepository.save(updatedTopic);
            } else {
                return null;
            }
        } else {
            return null;
        }
    }

    public void deleteTopic(Integer id) {
        topicRepository.deleteById(id);
    }
}
