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
    private RepoTopicContent topicContentRepository;

    public List<TopicContent> getAllTopicContents() {
        return topicContentRepository.findAll();
    }

    public Optional<TopicContent> getTopicContentById(Integer id) {
        return topicContentRepository.findById(id);
    }

    public TopicContent createTopicContent(TopicContent topicContent) {
        return topicContentRepository.save(topicContent);
    }

    public TopicContent updateTopicContent(TopicContent topicContent) {
        if (topicContent != null && topicContent.getId() != null) {
            Optional<TopicContent> existingTopicContent = topicContentRepository.findById(topicContent.getId());

            if (existingTopicContent.isPresent()) {
                TopicContent updatedTopicContent = existingTopicContent.get();

                if (topicContent.getTopic_name() != null) {
                    updatedTopicContent.setTopic_name(topicContent.getTopic_name());
                }
                if (topicContent.getActivity() != null) {
                    updatedTopicContent.setActivity(topicContent.getActivity());
                }
                if (topicContent.getPendingHomework() != null) {
                    updatedTopicContent.setPendingHomework(topicContent.getPendingHomework());
                }
                if (topicContent.getResources() != null) {
                    updatedTopicContent.setResources(topicContent.getResources());
                }
                if (topicContent.getTopic() != null) {
                    updatedTopicContent.setTopic(topicContent.getTopic());
                }

                return topicContentRepository.save(updatedTopicContent);
            } else {
                return null;
            }
        } else {
            return null;
        }
    }

    public void deleteTopicContent(Integer id) {
        topicContentRepository.deleteById(id);
    }
}
