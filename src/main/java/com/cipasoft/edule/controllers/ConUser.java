package com.cipasoft.edule.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.cipasoft.edule.models.CombinedUser;
import com.cipasoft.edule.models.User;
import com.cipasoft.edule.services.ServUser;
import com.cipasoft.edule.services.UserCombinedService;

import java.util.List;

@RestController
@RequestMapping("/api/user")
@CrossOrigin(origins = "*")
public class ConUser {
    @Autowired
    private ServUser userService;

    @Autowired
    private UserCombinedService userCombinedService;

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public void createUser(@RequestBody User user) {
        userService.createUser(user);
    }

    @GetMapping("/all")
    public ResponseEntity<List<User>> getAllUsers() {
        List<User> user = userService.getAllUsers();
        if (user.isEmpty()) {
            return ResponseEntity.noContent().build();
        } else {
            return ResponseEntity.ok(user);
        }
    }

    @GetMapping("/teachers/byClassroom/{classroomName}")
    public ResponseEntity<List<Object[]>> getUsersByClassroom(@PathVariable("classroomName") String classroomName) {
        List<Object[]> users = userService.getUsersByClassroom(classroomName);
        if (users.isEmpty()) {
            return ResponseEntity.noContent().build();
        } else {
            return ResponseEntity.ok(users);
        }
    }

    @GetMapping("/teachers")
    public List<User> getAllTeachers() {
        return userService.getAllTeachers();
    }

    @GetMapping("/admins")
    public List<User> getAllAdministrators() {
        return userService.getAllAdministrators();
    }

    @GetMapping("/acacoords")
    public List<User> getAllAcademicCoordinators() {
        return userService.getAllAcademicCoordinators();
    }

    @GetMapping("/login")
    public List<CombinedUser> getAllUsersOrderedByUsername() {
        return userCombinedService.getAllUsersOrderedByUsername();
    }

    @PutMapping("/update")
    @ResponseStatus(HttpStatus.OK)
    public User updateUser(@RequestBody User user) {
        return userService.updateUser(user);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteUser(@PathVariable("id") Integer id) {
        userService.deleteUser(id);
    }
}
