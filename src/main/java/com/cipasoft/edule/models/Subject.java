package com.cipasoft.edule.models;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

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
    private String subject_name;

    private String description;

    @OneToMany(cascade = {CascadeType.PERSIST}, mappedBy = "subject")
    @JsonIgnore
    private List<Hour> hours;

    @OneToMany(cascade = {CascadeType.PERSIST}, mappedBy = "subject")
    @JsonIgnore
    private List<Topic> topics;

    @OneToMany(cascade = {CascadeType.PERSIST}, mappedBy = "subject")
    @JsonIgnore
    private List<UserSubject> userSubjects;
    
    @OneToMany(cascade = {CascadeType.PERSIST}, mappedBy = "subject")
    @JsonIgnore
    private List<SubjectClassroom> subjectClassrooms;
}
