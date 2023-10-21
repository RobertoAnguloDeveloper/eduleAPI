package com.cipasoft.edule.models;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

import jakarta.persistence.*;

@Entity
@Table(name = "hours")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Hour {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private java.sql.Time hour;

    @ManyToOne
    @JoinColumn(name = "subject_id")
    private Subject subject;
}
