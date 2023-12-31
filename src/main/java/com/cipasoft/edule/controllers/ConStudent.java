package com.cipasoft.edule.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.cipasoft.edule.models.Student;
import com.cipasoft.edule.services.ServStudent;

import java.util.List;

@RestController
@RequestMapping("/api/student")
@CrossOrigin(origins = "*")
public class ConStudent {
    @Autowired
    private ServStudent studentService;

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public Student createStudent(@RequestBody Student student) {
        return studentService.createStudent(student);
    }

    @GetMapping("/all")
    public ResponseEntity<List<Student>> getAllStudents() {
        List<Student> student = studentService.getAllStudents();
        if (student.isEmpty()) {
            return ResponseEntity.noContent().build();
        } else {
            return ResponseEntity.ok(student);
        }
    }

    @GetMapping("/students/byClassroom/{classroomName}")
    public ResponseEntity<List<Object[]>> getStudentsByClassroom(@PathVariable("classroomName") String classroomName) {
        List<Object[]> students = studentService.getStudentsByClassroom(classroomName);
        if (students.isEmpty()) {
            return ResponseEntity.noContent().build();
        } else {
            return ResponseEntity.ok(students);
        }
    }

    @PutMapping("/update")
    @ResponseStatus(HttpStatus.CREATED)
    public Student updateStudent(@RequestBody Student student) {
        return studentService.updateStudent(student);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteStudent(@PathVariable("id") Integer id) {
        studentService.deleteStudent(id);
    }
}
