package com.cipasoft.edule.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cipasoft.edule.models.Subject;
import com.cipasoft.edule.repositories.RepoSubject;

import java.util.List;
import java.util.Optional;

@Service
public class ServSubject {
    @Autowired
    private RepoSubject subjectRepository;

    public List<Subject> getAllSubjects() {
        return subjectRepository.findAll();
    }

    public List<String> getSubjectsByClassroom(String classroomName) {
        return subjectRepository.findSubjectsByClassroom(classroomName);
    }

    public Optional<Subject> getSubjectById(Integer id) {
        return subjectRepository.findById(id);
    }

    public Subject createSubject(Subject subject) {
        return subjectRepository.save(subject);
    }

    public Subject updateSubject(Subject subject) {
        if (subject != null && subject.getId() != null) {
            Optional<Subject> existingSubject = subjectRepository.findById(subject.getId());

            if (existingSubject.isPresent()) {
                Subject updatedSubject = existingSubject.get();

                if (subject.getSubject_name() != null) {
                    updatedSubject.setSubject_name(subject.getSubject_name());
                }
                if (subject.getDescription() != null) {
                    updatedSubject.setDescription(subject.getDescription());
                }

                return subjectRepository.save(updatedSubject);
            } else {
                return null;
            }
        } else {
            return null;
        }
    }

    public void deleteSubject(Integer id) {
        subjectRepository.deleteById(id);
    }
}
