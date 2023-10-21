package com.cipasoft.edule.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cipasoft.edule.models.IdType;
import com.cipasoft.edule.repositories.RepoIdType;

import java.util.List;
import java.util.Optional;

@Service
public class ServIdType {
    @Autowired
    private RepoIdType idTypeRepository;

    public List<IdType> getAllIdTypes() {
        return idTypeRepository.findAll();
    }

    public Optional<IdType> getIdTypeById(Integer id) {
        return idTypeRepository.findById(id);
    }

    public IdType createIdType(IdType idType) {
        return idTypeRepository.save(idType);
    }

    public IdType updateIdType(IdType idType) {
        return idTypeRepository.save(idType);
    }

    public void deleteIdType(Integer id) {
        idTypeRepository.deleteById(id);
    }
}
