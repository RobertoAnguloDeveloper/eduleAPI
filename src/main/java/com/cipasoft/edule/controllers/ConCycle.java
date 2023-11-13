package com.cipasoft.edule.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

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
    public List<Cycle> getAllCycles() {
        return cycleService.getAllCycles();
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
