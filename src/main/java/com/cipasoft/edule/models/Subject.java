package com.cipasoft.edule.models;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import jakarta.persistence.*;

@Entity
@Table(name = "subjects")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Subject {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "subject_name")
    private String subjectName;

    private String description;

    @OneToMany(mappedBy = "subject")
    @JsonIgnoreProperties("subject")
    private List<Hour> hours;

    @OneToMany(mappedBy = "subject")
    @JsonIgnoreProperties("subject")
    private List<Topic> classes;

    @OneToMany(mappedBy = "subject")
    @JsonIgnoreProperties("subject")
    private List<UserSubject> userSubjects;
}
