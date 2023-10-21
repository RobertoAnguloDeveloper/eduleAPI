package com.cipasoft.edule.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import com.cipasoft.edule.models.Topic;
import com.cipasoft.edule.services.ServTopic;

import java.util.List;

@RestController
@RequestMapping("/api/Topic")
@CrossOrigin(origins = "*")
public class ConTopic {
    @Autowired
    private ServTopic topicService;

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public void createTopic(@RequestBody Topic topic) {
        topicService.createTopic(topic);
    }

    @GetMapping("/all")
    public List<Topic> getTopics() {
        return topicService.getAllTopics();
    }

    @PutMapping("/update")
    @ResponseStatus(HttpStatus.CREATED)
    public Topic updateTopic(@RequestBody Topic topic) {
        return topicService.updateTopic(topic);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteTopic(@PathVariable("id") Integer id) {
        topicService.deleteTopic(id);
    }
}
