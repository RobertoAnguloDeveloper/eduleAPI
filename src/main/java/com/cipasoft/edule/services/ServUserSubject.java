package com.cipasoft.edule.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cipasoft.edule.models.UserSubject;
import com.cipasoft.edule.repositories.RepoUserSubject;

import java.util.List;
import java.util.Optional;

@Service
public class ServUserSubject {
    @Autowired
    private RepoUserSubject userSubjectRepository;

    public List<UserSubject> getAllUserSubjects() {
        return userSubjectRepository.findAll();
    }

    public Optional<UserSubject> getUserSubjectById(Integer id) {
        return userSubjectRepository.findById(id);
    }

    public UserSubject createUserSubject(UserSubject userSubject) {
        return userSubjectRepository.save(userSubject);
    }

    public UserSubject updateUserSubject(UserSubject userSubject) {
        return userSubjectRepository.save(userSubject);
    }

    public void deleteUserSubject(Integer id) {
        userSubjectRepository.deleteById(id);
    }
}
