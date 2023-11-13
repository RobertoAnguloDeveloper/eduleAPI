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
        if (hourDay != null && hourDay.getId() != null) {
            if (hourDayRepository.existsById(hourDay.getId())) {
                Optional<HourDay> oldHourDay = hourDayRepository.findById(hourDay.getId());
                HourDay updatedHourDay = oldHourDay.get();

                if (hourDay.getHour() != null) {
                    updatedHourDay.setHour(hourDay.getHour());
                }
                if (hourDay.getDay() != null) {
                    updatedHourDay.setDay(hourDay.getDay());
                }

                return hourDayRepository.save(updatedHourDay);
            } else {
                return null;
            }
        } else {
            return null;
        }
    }

    public void deleteHourDay(Integer id) {
        hourDayRepository.deleteById(id);
    }
}
