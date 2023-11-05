package com.cipasoft.edule.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cipasoft.edule.models.Schedule;
import com.cipasoft.edule.repositories.RepoSchedule;

import java.util.List;
import java.util.Optional;

@Service
public class ServSchedule {
    @Autowired
    private RepoSchedule ScheduleRepository;

    public List<Schedule> getAllSchedules() {
        return ScheduleRepository.findAll();
    }

    public Optional<Schedule> getScheduleById(Integer id) {
        return ScheduleRepository.findById(id);
    }

    public Schedule createSchedule(Schedule Schedule) {
        return ScheduleRepository.save(Schedule);
    }

    public Schedule updateSchedule(Schedule Schedule) {
        return ScheduleRepository.save(Schedule);
    }

    public void deleteSchedule(Integer id) {
        ScheduleRepository.deleteById(id);
    }
}
