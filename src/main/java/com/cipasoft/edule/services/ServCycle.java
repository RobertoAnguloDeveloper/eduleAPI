package com.cipasoft.edule.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cipasoft.edule.models.Cycle;
import com.cipasoft.edule.repositories.RepoCycle;

import java.util.List;
import java.util.Optional;

@Service
public class ServCycle {
    @Autowired
    private RepoCycle CycleRepository;

    public List<Cycle> getAllCycles() {
        return CycleRepository.findAll();
    }

    public Optional<Cycle> getCycleById(Integer id) {
        return CycleRepository.findById(id);
    }

    public Cycle createCycle(Cycle Cycle) {
        return CycleRepository.save(Cycle);
    }

    public Cycle updateCycle(Cycle Cycle) {
        return CycleRepository.save(Cycle);
    }

    public void deleteCycle(Integer id) {
        CycleRepository.deleteById(id);
    }
}
