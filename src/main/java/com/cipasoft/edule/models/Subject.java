package com.cipasoft.edule.models;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

import java.util.List;

import jakarta.persistence.*;

@Entity
@Table(name = "subjects")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Subject {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "subject_name")
    private String subjectName;

    private String description;

    @OneToMany(mappedBy = "subject")
    private List<Hour> hours;

    @OneToMany(mappedBy = "subject")
    private List<Topic> classes;

    @OneToMany(mappedBy = "subject")
    private List<UserSubject> userSubjects;
}
