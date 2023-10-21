package com.cipasoft.edule.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cipasoft.edule.models.Classroom;
import com.cipasoft.edule.repositories.RepoClassroom;

import java.util.List;
import java.util.Optional;

@Service
public class ServClassroom {
    @Autowired
    private RepoClassroom classroomRepository;

    public List<Classroom> getAllClassrooms() {
        return classroomRepository.findAll();
    }

    public Optional<Classroom> getClassroomById(Integer id) {
        return classroomRepository.findById(id);
    }

    public Classroom createClassroom(Classroom classroom) {
        return classroomRepository.save(classroom);
    }

    public Classroom updateClassroom(Classroom classroom) {
        return classroomRepository.save(classroom);
    }

    public void deleteClassroom(Integer id) {
        classroomRepository.deleteById(id);
    }
}
