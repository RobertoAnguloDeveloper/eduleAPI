package com.cipasoft.edule.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.cipasoft.edule.models.Parent;
import com.cipasoft.edule.services.ServParent;

import java.util.List;

@RestController
@RequestMapping("/api/parent")
@CrossOrigin(origins = "*")
public class ConParent {
    @Autowired
    private ServParent parentService;

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public Parent createParent(@RequestBody Parent parent) {
        return parentService.createParent(parent);
    }

    @GetMapping("/all")
    public ResponseEntity<List<Parent>> getAllParents() {
        List<Parent> parent = parentService.getAllParents();
        if (parent.isEmpty()) {
            return ResponseEntity.noContent().build();
        } else {
            return ResponseEntity.ok(parent);
        }
    }

    @PutMapping("/update")
    @ResponseStatus(HttpStatus.CREATED)
    public Parent updateParent(@RequestBody Parent parent) {
        return parentService.updateParent(parent);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteParent(@PathVariable("id") Integer id) {
        parentService.deleteParent(id);
    }
}
