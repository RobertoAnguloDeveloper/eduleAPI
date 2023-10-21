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

    public Optional<Subject> getSubjectById(Integer id) {
        return subjectRepository.findById(id);
    }

    public Subject createSubject(Subject subject) {
        return subjectRepository.save(subject);
    }

    public Subject updateSubject(Subject subject) {
        return subjectRepository.save(subject);
    }

    public void deleteSubject(Integer id) {
        subjectRepository.deleteById(id);
    }
}
