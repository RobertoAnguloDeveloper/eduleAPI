package com.cipasoft.edule.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import com.cipasoft.edule.models.Comment;
import com.cipasoft.edule.services.ServComment;

import java.util.List;

@RestController
@RequestMapping("/api/comment")
@CrossOrigin(origins = "*")
public class ConComment {
    @Autowired
    private ServComment commentService;

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public void createComment(@RequestBody Comment comment) {
        commentService.createComment(comment);
    }

    @GetMapping("/all")
    public List<Comment> getAllComments() {
        return commentService.getAllComments();
    }

    @PutMapping("/update")
    @ResponseStatus(HttpStatus.CREATED)
    public Comment updateComment(@RequestBody Comment comment) {
        return commentService.updateComment(comment);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteComment(@PathVariable("id") Integer id) {
        commentService.deleteComment(id);
    }
}
