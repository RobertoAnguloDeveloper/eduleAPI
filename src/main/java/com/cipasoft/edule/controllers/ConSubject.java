package com.cipasoft.edule.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import com.cipasoft.edule.models.Subject;
import com.cipasoft.edule.services.ServSubject;

import java.util.List;

@RestController
@RequestMapping("/api/subject")
@CrossOrigin(origins = "*")
public class ConSubject {
    @Autowired
    private ServSubject subjectService;

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public void createSubject(@RequestBody Subject subject) {
        subjectService.createSubject(subject);
    }

    @GetMapping("/all")
    public List<Subject> getAllSubjects() {
        return subjectService.getAllSubjects();
    }

    @PutMapping("/update")
    @ResponseStatus(HttpStatus.CREATED)
    public Subject updateSubject(@RequestBody Subject subject) {
        return subjectService.updateSubject(subject);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteSubject(@PathVariable("id") Integer id) {
        subjectService.deleteSubject(id);
    }
}
