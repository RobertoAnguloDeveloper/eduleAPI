package com.cipasoft.edule.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.cipasoft.edule.models.Cycle;
import com.cipasoft.edule.models.Day;
import com.cipasoft.edule.services.ServDay;

import java.util.List;

@RestController
@RequestMapping("/api/day")
@CrossOrigin(origins = "*")
public class ConDay {
    @Autowired
    private ServDay dayService;

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public void createDay(@RequestBody Day day) {
        dayService.createDay(day);
    }

    @GetMapping("/all")
    public ResponseEntity<List<Day>> getAllDays() {
        List<Day> days = dayService.getAllDays();
        if (days.isEmpty()) {
            return ResponseEntity.noContent().build();
        } else {
            return ResponseEntity.ok(days);
        }
    }

    @PutMapping("/update")
    @ResponseStatus(HttpStatus.CREATED)
    public Day updateDay(@RequestBody Day day) {
        return dayService.updateDay(day);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteDay(@PathVariable("id") Integer id) {
        dayService.deleteDay(id);
    }
}
