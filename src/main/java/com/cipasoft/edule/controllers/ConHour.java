package com.cipasoft.edule.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.cipasoft.edule.models.Cycle;
import com.cipasoft.edule.models.Hour;
import com.cipasoft.edule.services.ServHour;

import java.util.List;

@RestController
@RequestMapping("/api/hour")
@CrossOrigin(origins = "*")
public class ConHour {
    @Autowired
    private ServHour hourService;

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public void createHour(@RequestBody Hour hour) {
        hourService.createHour(hour);
    }

    @GetMapping("/all")
    public ResponseEntity<List<Hour>> getAllHours() {
        List<Hour> hours = hourService.getAllHours();
        if (hours.isEmpty()) {
            return ResponseEntity.noContent().build();
        } else {
            return ResponseEntity.ok(hours);
        }
    }

    @PutMapping("/update")
    @ResponseStatus(HttpStatus.CREATED)
    public Hour updateHour(@RequestBody Hour hour) {
        return hourService.updateHour(hour);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteHour(@PathVariable("id") Integer id) {
        hourService.deleteHour(id);
    }
}
