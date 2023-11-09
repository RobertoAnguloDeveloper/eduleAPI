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
<<<<<<< HEAD
    private ServSchedule ScheduleService;

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public void createSchedule(@RequestBody Schedule Schedule) {
        ScheduleService.createSchedule(Schedule);
=======
    private ServSchedule scheduleService;

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public void createSchedule(@RequestBody Schedule schedule) {
        scheduleService.createSchedule(schedule);
>>>>>>> 9f2752f2fba057da02051bd38d798856e255e993
    }

    @GetMapping("/all")
    public List<Schedule> getAllSchedules() {
<<<<<<< HEAD
        return ScheduleService.getAllSchedules();
=======
        return scheduleService.getAllSchedules();
>>>>>>> 9f2752f2fba057da02051bd38d798856e255e993
    }

    @PutMapping("/update")
    @ResponseStatus(HttpStatus.CREATED)
<<<<<<< HEAD
    public Schedule updateSchedule(@RequestBody Schedule Schedule) {
        return ScheduleService.updateSchedule(Schedule);
=======
    public Schedule updateSchedule(@RequestBody Schedule schedule) {
        return scheduleService.updateSchedule(schedule);
>>>>>>> 9f2752f2fba057da02051bd38d798856e255e993
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteSchedule(@PathVariable("id") Integer id) {
<<<<<<< HEAD
        ScheduleService.deleteSchedule(id);
=======
        scheduleService.deleteSchedule(id);
>>>>>>> 9f2752f2fba057da02051bd38d798856e255e993
    }
}
