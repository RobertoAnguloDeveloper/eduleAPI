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
<<<<<<< HEAD
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
=======
    private RepoCycle RepoCycle;

    public List<Cycle> getAllCycles() {
        return RepoCycle.findAll();
    }

    public Optional<Cycle> getCycleById(Integer id) {
        return RepoCycle.findById(id);
    }

    public Cycle createCycle(Cycle cycle) {
        return RepoCycle.save(cycle);
    }

    public Cycle updateCycle(Cycle cycle) {
        if (cycle != null && cycle.getId() != null) {
            if (RepoCycle.existsById(cycle.getId())) {
                Optional<Cycle> oldCycle = RepoCycle.findById(cycle.getId());
                Cycle updatedCycle = oldCycle.get();

                if (cycle.getCycle_number() != null) {
                    updatedCycle.setCycle_number(cycle.getCycle_number());
                }
                if (cycle.getDay() != null) {
                    updatedCycle.setDay(cycle.getDay());
                }

                return RepoCycle.save(updatedCycle);
            } else {
                return null;
            }
        } else {
            return null;
        }
    }

    public void deleteCycle(Integer id) {
        RepoCycle.deleteById(id);
>>>>>>> 9f2752f2fba057da02051bd38d798856e255e993
    }
}
