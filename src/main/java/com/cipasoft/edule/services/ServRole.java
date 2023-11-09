package com.cipasoft.edule.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cipasoft.edule.models.Role;
import com.cipasoft.edule.repositories.RepoRole;

import java.util.List;
import java.util.Optional;

@Service
public class ServRole {
    @Autowired
    private RepoRole roleRepository;

    public List<Role> getAllRoles() {
        return roleRepository.findAll();
    }

    public Optional<Role> getRoleById(Integer id) {
        return roleRepository.findById(id);
    }

    public Role createRole(Role role) {
        return roleRepository.save(role);
    }

    public Role updateRole(Role role) {
        if (role != null && role.getId() != null) {
            if (roleRepository.existsById(role.getId())) {
                Optional<Role> oldRole = roleRepository.findById(role.getId());
                Role updatedRole = oldRole.get();

                if (role.getRole_name() != null) {
                    updatedRole.setRole_name(role.getRole_name());
                }
                if (role.getRole_description() != null) {
                    updatedRole.setRole_description(role.getRole_description());
                }

                return roleRepository.save(updatedRole);
            } else {
                return null;
            }
        } else {
            return null;
        }
    }

    public void deleteRole(Integer id) {
        roleRepository.deleteById(id);
    }
}
