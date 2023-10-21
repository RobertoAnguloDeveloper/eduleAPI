package com.cipasoft.edule.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import com.cipasoft.edule.models.Role;
import com.cipasoft.edule.services.ServRole;

import java.util.List;

@RestController
@RequestMapping("/api/role")
@CrossOrigin(origins = "*")
public class ConRole {
    @Autowired
    private ServRole roleService;

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public void createRole(@RequestBody Role role) {
        roleService.createRole(role);
    }

    @GetMapping("/all")
    public List<Role> getAllRoles() {
        return roleService.getAllRoles();
    }

    @PutMapping("/update")
    @ResponseStatus(HttpStatus.CREATED)
    public Role updateRole(@RequestBody Role role) {
        return roleService.updateRole(role);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteRole(@PathVariable("id") Integer id) {
        roleService.deleteRole(id);
    }
}
