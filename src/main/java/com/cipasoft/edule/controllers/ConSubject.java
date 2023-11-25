package com.cipasoft.edule.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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
    public ResponseEntity<List<Subject>> getAllSubjects() {
        List<Subject> subject = subjectService.getAllSubjects();
        if (subject.isEmpty()) {
            return ResponseEntity.noContent().build();
        } else {
            return ResponseEntity.ok(subject);
        }
    }

    @GetMapping("/subjects/byClassroom/{classroomName}")
    public ResponseEntity<List<String>> getSubjectsByClassroom(@PathVariable("classroomName") String classroomName) {
        List<String> subjects = subjectService.getSubjectsByClassroom(classroomName);
        if (subjects.isEmpty()) {
            return ResponseEntity.noContent().build();
        } else {
            return ResponseEntity.ok(subjects);
        }
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
