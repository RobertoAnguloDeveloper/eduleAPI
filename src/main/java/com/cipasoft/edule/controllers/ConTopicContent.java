package com.cipasoft.edule.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import com.cipasoft.edule.models.TopicContent;
import com.cipasoft.edule.services.ServTopicContent;

import java.util.List;

@RestController
@RequestMapping("/api/topiccontent")
@CrossOrigin(origins = "*")
public class ConTopicContent {
    @Autowired
    private ServTopicContent topicContentService;

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public void createTopicContent(@RequestBody TopicContent topicContent) {
        topicContentService.createTopicContent(topicContent);
    }

    @GetMapping("/all")
    public List<TopicContent> getAllTopicContents() {
        return topicContentService.getAllTopicContents();
    }

    @PutMapping("/update")
    @ResponseStatus(HttpStatus.CREATED)
    public TopicContent updateTopicContent(@RequestBody TopicContent topicContent) {
        return topicContentService.updateTopicContent(topicContent);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteTopicContent(@PathVariable("id") Integer id) {
        topicContentService.deleteTopicContent(id);
    }
}
