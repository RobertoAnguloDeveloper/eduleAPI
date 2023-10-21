package com.cipasoft.edule.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cipasoft.edule.models.HourDay;
import com.cipasoft.edule.repositories.RepoHourDay;

import java.util.List;
import java.util.Optional;

@Service
public class ServHourDay {
    @Autowired
    private RepoHourDay hourDayRepository;

    public List<HourDay> getAllHourDays() {
        return hourDayRepository.findAll();
    }

    public Optional<HourDay> getHourDayById(Integer id) {
        return hourDayRepository.findById(id);
    }

    public HourDay createHourDay(HourDay hourDay) {
        return hourDayRepository.save(hourDay);
    }

    public HourDay updateHourDay(HourDay hourDay) {
        return hourDayRepository.save(hourDay);
    }

    public void deleteHourDay(Integer id) {
        hourDayRepository.deleteById(id);
    }
}
