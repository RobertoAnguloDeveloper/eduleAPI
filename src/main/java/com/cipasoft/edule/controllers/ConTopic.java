package com.cipasoft.edule.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.cipasoft.edule.models.SubjectClassroom;
import com.cipasoft.edule.models.Topic;
import com.cipasoft.edule.services.ServTopic;

import java.util.List;

@RestController
@RequestMapping("/api/topic")
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
    public ResponseEntity<List<Topic>> getAllTopics() {
        List<Topic> topic = topicService.getAllTopics();
        if (topic.isEmpty()) {
            return ResponseEntity.noContent().build();
        } else {
            return ResponseEntity.ok(topic);
        }
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
