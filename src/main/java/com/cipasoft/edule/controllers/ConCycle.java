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
<<<<<<< HEAD
    private ServCycle CycleService;

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public void createCycle(@RequestBody Cycle Cycle) {
        CycleService.createCycle(Cycle);
=======
    private ServCycle cycleService;

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public void createCycle(@RequestBody Cycle cycle) {
        cycleService.createCycle(cycle);
>>>>>>> 9f2752f2fba057da02051bd38d798856e255e993
    }

    @GetMapping("/all")
    public List<Cycle> getAllCycles() {
<<<<<<< HEAD
        return CycleService.getAllCycles();
=======
        return cycleService.getAllCycles();
>>>>>>> 9f2752f2fba057da02051bd38d798856e255e993
    }

    @PutMapping("/update")
    @ResponseStatus(HttpStatus.CREATED)
<<<<<<< HEAD
    public Cycle updateCycle(@RequestBody Cycle Cycle) {
        return CycleService.updateCycle(Cycle);
=======
    public Cycle updateCycle(@RequestBody Cycle cycle) {
        return cycleService.updateCycle(cycle);
>>>>>>> 9f2752f2fba057da02051bd38d798856e255e993
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteCycle(@PathVariable("id") Integer id) {
<<<<<<< HEAD
        CycleService.deleteCycle(id);
=======
        cycleService.deleteCycle(id);
>>>>>>> 9f2752f2fba057da02051bd38d798856e255e993
    }
}
