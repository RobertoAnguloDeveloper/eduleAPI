package com.cipasoft.edule.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.cipasoft.edule.models.Hour;
import com.cipasoft.edule.models.HourDay;
import com.cipasoft.edule.services.ServHourDay;

import java.util.List;

@RestController
@RequestMapping("/api/hourday")
@CrossOrigin(origins = "*")
public class ConHourDay {
    @Autowired
    private ServHourDay hourDayService;

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public void createHourDay(@RequestBody HourDay hourDay) {
        hourDayService.createHourDay(hourDay);
    }

    @GetMapping("/all")
    public ResponseEntity<List<HourDay>> getAllHourDays() {
        List<HourDay> hourDay = hourDayService.getAllHourDays();
        if (hourDay.isEmpty()) {
            return ResponseEntity.noContent().build();
        } else {
            return ResponseEntity.ok(hourDay);
        }
    }

    @PutMapping("/update")
    @ResponseStatus(HttpStatus.CREATED)
    public HourDay updateHourDay(@RequestBody HourDay hourDay) {
        return hourDayService.updateHourDay(hourDay);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteHourDay(@PathVariable("id") Integer id) {
        hourDayService.deleteHourDay(id);
    }
}
