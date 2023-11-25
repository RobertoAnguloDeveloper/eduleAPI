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
    private RepoSchedule scheduleRepository;

    public List<Schedule> getAllSchedules() {
        return scheduleRepository.findAll();
    }

    public Optional<Schedule> getScheduleById(Integer id) {
        return scheduleRepository.findById(id);
    }

    public Schedule createSchedule(Schedule Schedule) {
        return scheduleRepository.save(Schedule);
    }

    public Schedule updateSchedule(Schedule Schedule) {
        return scheduleRepository.save(Schedule);
    }

    public List<Object[]> findScheduleDetailsByUsername(String username) {
        return scheduleRepository.findScheduleDetailsByUsername(username);
    }

    public List<Object[]> findScheduleDetailsByStudent(String username) {
        return scheduleRepository.findScheduleDetailsByStudent(username);
    }

    public void deleteSchedule(Integer id) {
        scheduleRepository.deleteById(id);
    }
}
