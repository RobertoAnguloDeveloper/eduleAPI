package com.cipasoft.edule.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cipasoft.edule.models.CombinedUser;
import com.cipasoft.edule.models.Parent;
import com.cipasoft.edule.models.Student;
import com.cipasoft.edule.models.User;
import com.cipasoft.edule.repositories.RepoParent;
import com.cipasoft.edule.repositories.RepoStudent;
import com.cipasoft.edule.repositories.RepoUser;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

@Service
public class UserCombinedService {
    @Autowired
    private RepoParent parentRepository;

    @Autowired
    private RepoStudent studentRepository;

    @Autowired
    private RepoUser userRepository;

    public List<CombinedUser> getAllUsersOrderedByUsername() {

        List<Parent> parents = parentRepository.findAll();
        List<Student> students = studentRepository.findAll();
        List<User> users = userRepository.findAll();
        
        List<CombinedUser> allUsersList = new ArrayList<>();

        for (Parent parent : parents) {
            allUsersList.add(new CombinedUser(parent.getId(), parent.getUsername(),
             parent.getPassword(), parent.getEmail(), 5, parent.getIdentification(), 
             parent.getFirstName(), parent.getLastName()));
        }

        for (Student student : students) {
            allUsersList.add(new CombinedUser(student.getId(), student.getUsername(),
             student.getPassword(), student.getEmail(), 6, student.getIdentification(), 
             student.getFirstName(), student.getLastName()));
        }

        for (User user : users) {
            allUsersList.add(new CombinedUser(user.getId(), user.getUsername(),
             user.getPassword(), user.getEmail(), user.getRole_id().getId(), user.getIdentification(), 
             user.getFirstName(), user.getLastName()));
        }

        Collections.sort(allUsersList, Comparator.comparing(CombinedUser::getUsername));

        return allUsersList;
    }
}
