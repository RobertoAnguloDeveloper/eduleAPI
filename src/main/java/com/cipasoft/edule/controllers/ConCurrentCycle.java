package com.cipasoft.edule.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.cipasoft.edule.models.CurrentCycle;
import com.cipasoft.edule.services.ServCurrentCycle;

import java.util.List;

@RestController
@RequestMapping("/api/currentcycle")
@CrossOrigin(origins = "*")
public class ConCurrentCycle {
    @Autowired
    private ServCurrentCycle servCurrentCycle;

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public void createCurrentCycle(@RequestBody CurrentCycle currentCycle) {
        servCurrentCycle.createCurrentCycle(currentCycle);
    }

    @GetMapping("/all")
    public ResponseEntity<List<CurrentCycle>> getAllCurrentCycles() {
        List<CurrentCycle> currentCycles = servCurrentCycle.getAllCurrentCycles();
        if (currentCycles.isEmpty()) {
            return ResponseEntity.noContent().build();
        } else {
            return ResponseEntity.ok(currentCycles);
        }
    }

    @PutMapping("/update")
    @ResponseStatus(HttpStatus.CREATED)
    public CurrentCycle updateCurrentCycle(@RequestBody CurrentCycle currentCycle) {
        return servCurrentCycle.updateCurrentCycle(currentCycle);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteCurrentCycle(@PathVariable("id") Integer id) {
        servCurrentCycle.deleteCurrentCycle(id);
    }
}
