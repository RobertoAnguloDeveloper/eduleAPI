package com.cipasoft.edule.models;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

import jakarta.persistence.*;

@Entity
@Table(name = "cycles")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Cycle {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "cycle_number")
    private Integer cycle_number;

    @ManyToOne
    @JoinColumn(name = "day_id")
    private Day day;
}