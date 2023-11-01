package com.cipasoft.edule.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import com.cipasoft.edule.models.HourSubject;
import com.cipasoft.edule.services.ServHourSubject;

import java.util.List;

@RestController
@RequestMapping("/api/hoursubject")
@CrossOrigin(origins = "*")
public class ConHourSubject {
    @Autowired
    private ServHourSubject HourSubjectService;

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public void createHourSubject(@RequestBody HourSubject HourSubject) {
        HourSubjectService.createHourSubject(HourSubject);
    }

    @GetMapping("/all")
    public List<HourSubject> getAllHourSubjects() {
        return HourSubjectService.getAllHourSubjects();
    }

    @PutMapping("/update")
    @ResponseStatus(HttpStatus.CREATED)
    public HourSubject updateHourSubject(@RequestBody HourSubject HourSubject) {
        return HourSubjectService.updateHourSubject(HourSubject);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteHourSubject(@PathVariable("id") Integer id) {
        HourSubjectService.deleteHourSubject(id);
    }
}
