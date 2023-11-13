package com.cipasoft.edule.models;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class CombinedUser {
    private Integer id;
    private String username;
    private String password;
    private String email;
    private Integer role_id;
    private String identification;
    private String first_name;
    private String last_name;
    
    public CombinedUser(Integer id, String username, String password, String email, Integer role_id, String identification, String first_name, String last_name) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.role_id = role_id;
        this.identification = identification;
        this.first_name = first_name;
        this.last_name = last_name;
    }
}
