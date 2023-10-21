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
        return hourRepository.save(hour);
    }

    public void deleteHour(Integer id) {
        hourRepository.deleteById(id);
    }
}
