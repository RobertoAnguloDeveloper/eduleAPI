package com.cipasoft.edule.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cipasoft.edule.models.User;
import com.cipasoft.edule.repositories.RepoUser;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class ServUser {
    @Autowired
    private RepoUser userRepository;

    public List<User> getAllUsers() {
        return userRepository.findAll();
    }

    public List<User> getAllTeachers() {
        List<User> teachers = new ArrayList<>();

        List<User> allUsers = getAllUsers();

        for (User user : allUsers) {
            if(user.getRole_id().getId() == 2){
                teachers.add(user);
            }
        }
        return teachers;
    }

    public List<User> getAllAdministrators() {
        List<User> administrators = new ArrayList<>();

        List<User> allUsers = getAllUsers();

        for (User user : allUsers) {
            if(user.getRole_id().getId() == 1){
                administrators.add(user);
            }
        }
        return administrators;
    }

    public List<User> getAllAcademicCoordinators() {
        List<User> academicCoordinators = new ArrayList<>();

        List<User> allUsers = getAllUsers();

        for (User user : allUsers) {
            if(user.getRole_id().getId() == 1){
                academicCoordinators.add(user);
            }
        }
        return academicCoordinators;
    }

    public List<Object[]> getUsersByClassroom(String classroomName) {
        return userRepository.findUsersByClassroom(classroomName);
    }

    public Optional<User> getUserById(Integer id) {
        return userRepository.findById(id);
    }

    public User createUser(User user) {
        return userRepository.save(user);
    }

    public User updateUser(User user) {
        if (user != null && user.getId() != null) {
            Optional<User> existingUser = userRepository.findById(user.getId());

            if (existingUser.isPresent()) {
                User updatedUser = existingUser.get();

                // Actualiza los campos según sea necesario
                if (user.getId_type() != null) {
                    updatedUser.setId_type(user.getId_type());
                }
                if (user.getIdentification() != null) {
                    updatedUser.setIdentification(user.getIdentification());
                }
                if (user.getFirstName() != null) {
                    updatedUser.setFirstName(user.getFirstName());
                }
                if (user.getLastName() != null) {
                    updatedUser.setLastName(user.getLastName());
                }
                if (user.getEmail() != null) {
                    updatedUser.setEmail(user.getEmail());
                }
                if (user.getRole_id() != null) {
                    updatedUser.setRole_id(user.getRole_id());
                }
                if (user.getUsername() != null) {
                    updatedUser.setUsername(user.getUsername());
                }
                if (user.getPassword() != null) {
                    updatedUser.setPassword(user.getPassword());
                }

                return userRepository.save(updatedUser);
            } else {
                return null;
            }
        } else {
            return null;
        }
    }

    public void deleteUser(Integer id) {
        userRepository.deleteById(id);
    }
}
