package com.cipasoft.edule.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import com.cipasoft.edule.models.IdType;
import com.cipasoft.edule.services.ServIdType;

import java.util.List;

@RestController
@RequestMapping("/api/idtype")
@CrossOrigin(origins = "*")
public class ConIdType {
    @Autowired
    private ServIdType idTypeService;

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public void createIdType(@RequestBody IdType idType) {
        idTypeService.createIdType(idType);
    }

    @GetMapping("/all")
    public List<IdType> getAllIdTypes() {
        return idTypeService.getAllIdTypes();
    }

    @PutMapping("/update")
    @ResponseStatus(HttpStatus.CREATED)
    public IdType updateIdType(@RequestBody IdType idType) {
        return idTypeService.updateIdType(idType);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteIdType(@PathVariable("id") Integer id) {
        idTypeService.deleteIdType(id);
    }
}
