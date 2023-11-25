package com.cipasoft.edule.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cipasoft.edule.models.Parent;
import com.cipasoft.edule.repositories.RepoParent;

import java.util.List;
import java.util.Optional;

@Service
public class ServParent {
    @Autowired
    private RepoParent parentRepository;

    public List<Parent> getAllParents() {
        return parentRepository.findAll();
    }

    public List<Object[]> getParentsByClassroom(String classroomName) {
        return parentRepository.findParentsByClassroom(classroomName);
    }

    public Optional<Parent> getParentById(Integer id) {
        return parentRepository.findById(id);
    }

    public Parent createParent(Parent parent) {
        return parentRepository.save(parent);
    }

    public Parent updateParent(Parent parent) {
        if (parent != null && parent.getId() != null) {
            if (parentRepository.existsById(parent.getId())) {
                Optional<Parent> oldParent = parentRepository.findById(parent.getId());
                Parent updatedParent = oldParent.get();

                // Actualiza los campos según sea necesario
                if (parent.getFirstName() != null) {
                    updatedParent.setFirstName(parent.getFirstName());
                }
                if (parent.getLastName() != null) {
                    updatedParent.setLastName(parent.getLastName());
                }
                if (parent.getIdentification() != null) {
                    updatedParent.setIdentification(parent.getIdentification());
                }
                if (parent.getPhoneNumber() != null) {
                    updatedParent.setPhoneNumber(parent.getPhoneNumber());
                }
                if (parent.getAddress() != null) {
                    updatedParent.setAddress(parent.getAddress());
                }
                if (parent.getUsername() != null) {
                    updatedParent.setUsername(parent.getUsername());
                }
                if (parent.getPassword() != null) {
                    updatedParent.setPassword(parent.getPassword());
                }
                if (parent.getId_type() != null) {
                    updatedParent.setId_type(parent.getId_type());
                }
                if (parent.getEmail() != null) {
                    updatedParent.setEmail(parent.getEmail());
                }

                return parentRepository.save(updatedParent);
            } else {
                return null;
            }
        } else {
            return null;
        }
    }

    public void deleteParent(Integer id) {
        parentRepository.deleteById(id);
    }
}
