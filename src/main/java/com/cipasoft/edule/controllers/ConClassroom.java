package com.cipasoft.edule.controllers;

import com.cipasoft.edule.repositories.RepoClassroom;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import com.cipasoft.edule.models.Classroom;
import com.cipasoft.edule.services.ServClassroom;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/classroom")
@CrossOrigin(origins = "*")
public class ConClassroom {
    @Autowired
    private ServClassroom classroomService;

    private RepoClassroom repoClassroom;

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public void createClassroom(@RequestBody Classroom classroom) {
        classroomService.createClassroom(classroom);
    }

    @GetMapping("/all")
    public List<Classroom> getAllClassrooms() {
        return classroomService.getAllClassrooms();
    }

    @PutMapping("/update/{id}")
    @ResponseStatus(HttpStatus.CREATED)
    public Classroom updateClassroom(@PathVariable("id") Integer id, @RequestBody Classroom classroom){
       Optional <Classroom> classroomFud =  classroomService.getClassroomById(id);
       if(classroomFud.isPresent()){
           Classroom classroomUpt = classroomFud.get();
           classroomFud.get().setClassroom_name(classroom.getClassroom_name());
           return classroomService.createClassroom(classroomUpt);
       }
       return  null;
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteClassroom(@PathVariable("id") Integer id) {
        classroomService.deleteClassroom(id);
    }
}
