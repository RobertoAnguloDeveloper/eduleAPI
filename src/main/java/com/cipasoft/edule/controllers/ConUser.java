package com.cipasoft.edule.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
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
    public List<User> getAllUsers() {
        return userService.getAllUsers();
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
