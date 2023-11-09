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
        if (userSubject != null && userSubject.getId() != null) {
            Optional<UserSubject> existingUserSubject = userSubjectRepository.findById(userSubject.getId());

            if (existingUserSubject.isPresent()) {
                UserSubject updatedUserSubject = existingUserSubject.get();

                if (userSubject.getSubject() != null) {
                    updatedUserSubject.setSubject(userSubject.getSubject());
                }
                if (userSubject.getUser() != null) {
                    updatedUserSubject.setUser(userSubject.getUser());
                }

                return userSubjectRepository.save(updatedUserSubject);
            } else {
                return null;
            }
        } else {
            return null;
        }
    }

    public void deleteUserSubject(Integer id) {
        userSubjectRepository.deleteById(id);
    }
}
