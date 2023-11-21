package com.cipasoft.edule.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.cipasoft.edule.models.Classroom;
import com.cipasoft.edule.models.Cycle;
import com.cipasoft.edule.services.ServCycle;

import java.util.List;

@RestController
@RequestMapping("/api/cycle")
@CrossOrigin(origins = "*")
public class ConCycle {
    @Autowired
    private ServCycle cycleService;

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public void createCycle(@RequestBody Cycle cycle) {
        cycleService.createCycle(cycle);
    }

    @GetMapping("/all")
    public ResponseEntity<List<Cycle>> getAllCycles() {
        List<Cycle> cycles = cycleService.getAllCycles();
        if (cycles.isEmpty()) {
            return ResponseEntity.noContent().build();
        } else {
            return ResponseEntity.ok(cycles);
        }
    }

    @PutMapping("/update")
    @ResponseStatus(HttpStatus.CREATED)
    public Cycle updateCycle(@RequestBody Cycle cycle) {
        return cycleService.updateCycle(cycle);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteCycle(@PathVariable("id") Integer id) {
        cycleService.deleteCycle(id);
    }
}
