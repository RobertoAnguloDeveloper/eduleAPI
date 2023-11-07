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

    public HourSubject createHourSubject(HourSubject hourSubject) {
        return hourSubjectRepository.save(hourSubject);
    }

    public HourSubject updateHourSubject(HourSubject hourSubject) {
        if (hourSubject != null && hourSubject.getId() != null) {
            if (hourSubjectRepository.existsById(hourSubject.getId())) {
                Optional<HourSubject> oldHourSubject = hourSubjectRepository.findById(hourSubject.getId());
                HourSubject updatedHourSubject = oldHourSubject.get();

                // Actualiza los campos según sea necesario
                if (hourSubject.getSubject() != null) {
                    updatedHourSubject.setSubject(hourSubject.getSubject());
                }
                if (hourSubject.getHour() != null) {
                    updatedHourSubject.setHour(hourSubject.getHour());
                }

                return hourSubjectRepository.save(updatedHourSubject);
            } else {
                // HourSubject no encontrado, puede realizar otro manejo de error o lanzar una excepción
                return null;
            }
        } else {
            // Datos de HourSubject nulos o faltantes, puede realizar otro manejo de error o lanzar una excepción
            return null;
        }
    }

    public void deleteHourSubject(Integer id) {
        hourSubjectRepository.deleteById(id);
    }
}
