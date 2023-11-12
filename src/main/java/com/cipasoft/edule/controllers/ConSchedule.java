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
    private ServSchedule scheduleService;

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public void createSchedule(@RequestBody Schedule schedule) {
        scheduleService.createSchedule(schedule);
    }

    @GetMapping("/all")
    public List<Schedule> getAllSchedules() {
        return scheduleService.getAllSchedules();
    }

    @PutMapping("/update")
    @ResponseStatus(HttpStatus.CREATED)
    public Schedule updateSchedule(@RequestBody Schedule schedule) {
        return scheduleService.updateSchedule(schedule);
    }

    @GetMapping("/details/{username}")
    public List<Object[]> getScheduleDetailsByUsername(@PathVariable("username") String username) {
        return scheduleService.findScheduleDetailsByUsername(username);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteSchedule(@PathVariable("id") Integer id) {
        scheduleService.deleteSchedule(id);
    }
}
