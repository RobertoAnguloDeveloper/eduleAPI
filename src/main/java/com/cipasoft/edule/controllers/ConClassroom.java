package com.cipasoft.edule.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import com.cipasoft.edule.models.Classroom;
import com.cipasoft.edule.services.ServClassroom;

import java.util.List;

@RestController
@RequestMapping("/api/classroom")
@CrossOrigin(origins = "*")
public class ConClassroom {
    @Autowired
    private ServClassroom classroomService;

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public void createClassroom(@RequestBody Classroom classroom) {
        classroomService.createClassroom(classroom);
    }

    @GetMapping("/all")
    public List<Classroom> getAllClassrooms() {
        return classroomService.getAllClassrooms();
    }

    @PutMapping("/update")
    @ResponseStatus(HttpStatus.CREATED)
    public Classroom updateClassroom(@RequestBody Classroom classroom) {
        return classroomService.updateClassroom(classroom);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteClassroom(@PathVariable("id") Integer id) {
        classroomService.deleteClassroom(id);
    }
}
