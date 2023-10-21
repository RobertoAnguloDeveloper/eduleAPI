package com.cipasoft.edule.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import com.cipasoft.edule.models.SubjectClassroom;
import com.cipasoft.edule.services.ServSubjectClassroom;

import java.util.List;

@RestController
@RequestMapping("/api/subjectclassroom")
@CrossOrigin(origins = "*")
public class ConSubjectClassroom {
    @Autowired
    private ServSubjectClassroom subjectClassroomService;

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public void createSubjectClassroom(@RequestBody SubjectClassroom subjectClassroom) {
        subjectClassroomService.createSubjectClassroom(subjectClassroom);
    }

    @GetMapping("/all")
    public List<SubjectClassroom> getAllSubjectClassrooms() {
        return subjectClassroomService.getAllSubjectClassrooms();
    }

    @PutMapping("/update")
    @ResponseStatus(HttpStatus.CREATED)
    public SubjectClassroom updateSubjectClassroom(@RequestBody SubjectClassroom subjectClassroom) {
        return subjectClassroomService.updateSubjectClassroom(subjectClassroom);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteSubjectClassroom(@PathVariable("id") Integer id) {
        subjectClassroomService.deleteSubjectClassroom(id);
    }
}
