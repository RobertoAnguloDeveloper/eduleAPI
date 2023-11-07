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

    public Schedule createSchedule(Schedule schedule) {
        return scheduleRepository.save(schedule);
    }

    public Schedule updateSchedule(Schedule schedule) {
        if (schedule != null && schedule.getId() != null) {
            Optional<Schedule> existingSchedule = scheduleRepository.findById(schedule.getId());

            if (existingSchedule.isPresent()) {
                Schedule updatedSchedule = existingSchedule.get();
                
                if (schedule.getHour_day_id() != null) {
                    updatedSchedule.setHour_day_id(schedule.getHour_day_id());
                }
                if (schedule.getSubject_classroom_id() != null) {
                    updatedSchedule.setSubject_classroom_id(schedule.getSubject_classroom_id());
                }

                return scheduleRepository.save(updatedSchedule);
            } else {
                return null;
            }
        } else {
            return null;
        }
    }

    public void deleteSchedule(Integer id) {
        scheduleRepository.deleteById(id);
    }
}
