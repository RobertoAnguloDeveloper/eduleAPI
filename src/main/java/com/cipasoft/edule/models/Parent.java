package com.cipasoft.edule.models;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

import jakarta.persistence.*;
import java.util.List;
import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "parents")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Parent {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "last_name")
    private String lastName;

    private String CC; // Asumiendo que CC significa Cédula de Ciudadanía

    @Column(name = "phone_number")
    private String phoneNumber;

    private String address;

    private String username;

    private String password;

    @OneToMany(cascade = {CascadeType.PERSIST}, mappedBy = "parent")
    @JsonIgnore
    private List<Student> students;
}
