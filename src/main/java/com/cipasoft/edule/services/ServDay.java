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

    public Optional<Day> getDayById(Long id) {
        return dayRepository.findById(id);
    }

    public Day createDay(Day day) {
        return dayRepository.save(day);
    }

    public Day updateDay(Day day) {
        return dayRepository.save(day);
    }

    public void deleteDay(Long id) {
        dayRepository.deleteById(id);
    }
}
