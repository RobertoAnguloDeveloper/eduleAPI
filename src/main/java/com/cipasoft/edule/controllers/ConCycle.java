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
    private ServCycle CycleService;

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public void createCycle(@RequestBody Cycle Cycle) {
        CycleService.createCycle(Cycle);
    }

    @GetMapping("/all")
    public List<Cycle> getAllCycles() {
        return CycleService.getAllCycles();
    }

    @PutMapping("/update")
    @ResponseStatus(HttpStatus.CREATED)
    public Cycle updateCycle(@RequestBody Cycle Cycle) {
        return CycleService.updateCycle(Cycle);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteCycle(@PathVariable("id") Integer id) {
        CycleService.deleteCycle(id);
    }
}
