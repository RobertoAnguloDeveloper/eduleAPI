package com.cipasoft.edule.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cipasoft.edule.models.SubjectClassroom;
import com.cipasoft.edule.repositories.RepoSubjectClassroom;

import java.util.List;
import java.util.Optional;

@Service
public class ServSubjectClassroom {
    @Autowired
    private RepoSubjectClassroom subjectClassroomClassroomRepository;

    public List<SubjectClassroom> getAllSubjectClassrooms() {
        return subjectClassroomClassroomRepository.findAll();
    }

    public Optional<SubjectClassroom> getSubjectClassroomById(Integer id) {
        return subjectClassroomClassroomRepository.findById(id);
    }

    public SubjectClassroom createSubjectClassroom(SubjectClassroom subjectClassroom) {
        return subjectClassroomClassroomRepository.save(subjectClassroom);
    }

    public SubjectClassroom updateSubjectClassroom(SubjectClassroom subjectClassroom) {
        return subjectClassroomClassroomRepository.save(subjectClassroom);
    }

    public void deleteSubjectClassroom(Integer id) {
        subjectClassroomClassroomRepository.deleteById(id);
    }
}
