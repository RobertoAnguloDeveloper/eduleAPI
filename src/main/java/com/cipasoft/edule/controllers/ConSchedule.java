package com.cipasoft.edule.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import com.cipasoft.edule.models.Schedule;
import com.cipasoft.edule.services.ServSchedule;

import java.util.List;

@RestController
@RequestMapping("/api/schedule")
@CrossOrigin(origins = "*")
public class ConSchedule {
    @Autowired
    private ServSchedule ScheduleService;

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public void createSchedule(@RequestBody Schedule Schedule) {
        ScheduleService.createSchedule(Schedule);
    }

    @GetMapping("/all")
    public List<Schedule> getAllSchedules() {
        return ScheduleService.getAllSchedules();
    }

    @PutMapping("/update")
    @ResponseStatus(HttpStatus.CREATED)
    public Schedule updateSchedule(@RequestBody Schedule Schedule) {
        return ScheduleService.updateSchedule(Schedule);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteSchedule(@PathVariable("id") Integer id) {
        ScheduleService.deleteSchedule(id);
    }
}
