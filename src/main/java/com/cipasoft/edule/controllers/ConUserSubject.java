package com.cipasoft.edule.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import com.cipasoft.edule.models.UserSubject;
import com.cipasoft.edule.services.ServUserSubject;

import java.util.List;

@RestController
@RequestMapping("/api/usersubject")
@CrossOrigin(origins = "*")
public class ConUserSubject {
    @Autowired
    private ServUserSubject userSubjectService;

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public void createUserSubject(@RequestBody UserSubject userSubject) {
        userSubjectService.createUserSubject(userSubject);
    }

    @GetMapping("/all")
    public List<UserSubject> getAllUserSubjects() {
        return userSubjectService.getAllUserSubjects();
    }

    @PutMapping("/update")
    @ResponseStatus(HttpStatus.CREATED)
    public UserSubject updateUserSubject(@RequestBody UserSubject userSubject) {
        return userSubjectService.updateUserSubject(userSubject);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteUserSubject(@PathVariable("id") Integer id) {
        userSubjectService.deleteUserSubject(id);
    }
}
