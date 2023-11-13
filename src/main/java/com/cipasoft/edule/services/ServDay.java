package com.cipasoft.edule.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cipasoft.edule.models.Day;
import com.cipasoft.edule.repositories.RepoDay;

import java.util.List;
import java.util.Optional;

@Service
public class ServDay {
    @Autowired
    private RepoDay dayRepository;

    public List<Day> getAllDays() {
        return dayRepository.findAll();
    }

    public Optional<Day> getDayById(Integer id) {
        return dayRepository.findById(id);
    }

    public Day createDay(Day day) {
        return dayRepository.save(day);
    }

    public Day updateDay(Day day) {
        if (day != null && day.getId() != null) {
            if (dayRepository.existsById(day.getId())) {
                Optional<Day> oldDay = dayRepository.findById(day.getId());
                Day updatedDay = oldDay.get();

                if (day.getDay_number() != null) {
                    updatedDay.setDay_number(day.getDay_number());
                }

                return dayRepository.save(updatedDay);
            } else {
                return null;
            }
        } else {
            return null;
        }
    }

    public void deleteDay(Integer id) {
        dayRepository.deleteById(id);
    }
}
