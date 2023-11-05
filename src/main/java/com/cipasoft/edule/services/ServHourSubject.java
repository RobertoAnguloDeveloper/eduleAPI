package com.cipasoft.edule.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cipasoft.edule.models.HourSubject;
import com.cipasoft.edule.repositories.RepoHourSubject;

import java.util.List;
import java.util.Optional;

@Service
public class ServHourSubject {
    @Autowired
    private RepoHourSubject hourSubjectRepository;

    public List<HourSubject> getAllHourSubjects() {
        return hourSubjectRepository.findAll();
    }

    public Optional<HourSubject> getHourSubjectById(Integer id) {
        return hourSubjectRepository.findById(id);
    }

    public HourSubject createHourSubject(HourSubject HourSubject) {
        return hourSubjectRepository.save(HourSubject);
    }

    public HourSubject updateHourSubject(HourSubject HourSubject) {
        return hourSubjectRepository.save(HourSubject);
    }

    public void deleteHourSubject(Integer id) {
        hourSubjectRepository.deleteById(id);
    }
}
