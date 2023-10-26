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

    public Optional<Parent> getParentById(Integer id) {
        return parentRepository.findById(id);
    }

    public Parent createParent(Parent parent) {
        return parentRepository.save(parent);
    }

    public Parent updateParent(Parent parent) {
        return parentRepository.save(parent);
    }

    public void deleteParent(Integer id) {
        parentRepository.deleteById(id);
    }
}
