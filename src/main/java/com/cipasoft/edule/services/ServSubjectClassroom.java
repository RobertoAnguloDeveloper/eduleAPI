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
    private RepoSubjectClassroom subjectClassroomRepository;

    public List<SubjectClassroom> getAllSubjectClassrooms() {
        return subjectClassroomRepository.findAll();
    }

    public Optional<SubjectClassroom> getSubjectClassroomById(Integer id) {
        return subjectClassroomRepository.findById(id);
    }

    public SubjectClassroom createSubjectClassroom(SubjectClassroom subjectClassroom) {
        return subjectClassroomRepository.save(subjectClassroom);
    }

    public SubjectClassroom updateSubjectClassroom(SubjectClassroom subjectClassroom) {
        if (subjectClassroom != null && subjectClassroom.getId() != null) {
            Optional<SubjectClassroom> existingSubjectClassroom = subjectClassroomRepository.findById(subjectClassroom.getId());

            if (existingSubjectClassroom.isPresent()) {
                SubjectClassroom updatedSubjectClassroom = existingSubjectClassroom.get();

                if (subjectClassroom.getSubject() != null) {
                    updatedSubjectClassroom.setSubject(subjectClassroom.getSubject());
                }
                if (subjectClassroom.getClassroom() != null) {
                    updatedSubjectClassroom.setClassroom(subjectClassroom.getClassroom());
                }

                return subjectClassroomRepository.save(updatedSubjectClassroom);
            } else {
                return null;
            }
        } else {
            return null;
        }
    }

    public void deleteSubjectClassroom(Integer id) {
        subjectClassroomRepository.deleteById(id);
    }
}
