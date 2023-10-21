package com.cipasoft.edule.models;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

import jakarta.persistence.*;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "users")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "type_id")
    private IdType type_id;

    private String identification;

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "last_name")
    private String lastName;

    private String email;

    @ManyToOne
    @JoinColumn(name = "role_id")
    private Role role_id;

    private String username;

    private String password;

    @OneToMany(cascade = {CascadeType.PERSIST}, mappedBy = "user")
    @JsonIgnore
    private List<Comment> comments;

    @OneToMany(cascade = {CascadeType.PERSIST}, mappedBy = "user")
    @JsonIgnore
    private List<UserSubject> userSubjects;
}