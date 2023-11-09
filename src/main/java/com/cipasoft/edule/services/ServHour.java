package com.cipasoft.edule.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cipasoft.edule.models.Hour;
import com.cipasoft.edule.repositories.RepoHour;

import java.util.List;
import java.util.Optional;

@Service
public class ServHour {
    @Autowired
    private RepoHour hourRepository;

    public List<Hour> getAllHours() {
        return hourRepository.findAll();
    }

    public Optional<Hour> getHourById(Integer id) {
        return hourRepository.findById(id);
    }

    public Hour createHour(Hour hour) {
        return hourRepository.save(hour);
    }

    public Hour updateHour(Hour hour) {
        if (hour != null && hour.getId() != null) {
            if (hourRepository.existsById(hour.getId())) {
                Optional<Hour> oldHour = hourRepository.findById(hour.getId());
                Hour updatedHour = oldHour.get();

                if (hour.getHour() != null) {
                    updatedHour.setHour(hour.getHour());
                }

                return hourRepository.save(updatedHour);
            } else {
                return null;
            }
        } else {
            return null;
        }
    }

    public void deleteHour(Integer id) {
        hourRepository.deleteById(id);
    }
}
