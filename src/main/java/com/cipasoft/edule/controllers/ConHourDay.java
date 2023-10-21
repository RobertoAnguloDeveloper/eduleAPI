package com.cipasoft.edule.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

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
    public List<HourDay> getAllHourDays() {
        return hourDayService.getAllHourDays();
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
