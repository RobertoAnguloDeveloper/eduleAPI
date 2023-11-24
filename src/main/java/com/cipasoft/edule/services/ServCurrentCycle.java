package com.cipasoft.edule.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cipasoft.edule.models.CurrentCycle;
import com.cipasoft.edule.repositories.RepoCurrentCycle;

import java.util.List;
import java.util.Optional;

@Service
public class ServCurrentCycle {
    @Autowired
    private RepoCurrentCycle repoCurrentCycle;

    public List<CurrentCycle> getAllCurrentCycles() {
        return repoCurrentCycle.findAll();
    }

    public Optional<CurrentCycle> getCurrentCycleById(Integer id) {
        return repoCurrentCycle.findById(id);
    }

    public CurrentCycle createCurrentCycle(CurrentCycle currentCycle) {
        return repoCurrentCycle.save(currentCycle);
    }

    public CurrentCycle updateCurrentCycle(CurrentCycle currentCycle) {
        if (currentCycle != null && currentCycle.getId() != null) {
            if (repoCurrentCycle.existsById(currentCycle.getId())) {
                Optional<CurrentCycle> oldCurrentCycle = repoCurrentCycle.findById(currentCycle.getId());
                CurrentCycle updatedCurrentCycle = oldCurrentCycle.get();

                if (currentCycle.getCurrentDay() != null) {
                    updatedCurrentCycle.setCurrentDay(currentCycle.getCurrentDay());
                }
                if (currentCycle.getUpdateDate() != null) {
                    updatedCurrentCycle.setUpdateDate(currentCycle.getUpdateDate());
                }
                if (currentCycle.getIncidentDescription() != null) {
                    updatedCurrentCycle.setIncidentDescription(currentCycle.getIncidentDescription());
                }

                return repoCurrentCycle.save(updatedCurrentCycle);
            } else {
                return null;
            }
        } else {
            return null;
        }
    }

    public void deleteCurrentCycle(Integer id) {
        repoCurrentCycle.deleteById(id);
    }
}
