package com.cipasoft.edule.models;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

import jakarta.persistence.*;

@Entity
@Table(name = "current_cycles")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CurrentCycle {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "current_day")
    private Day currentDay;

    @Column(name = "update_date")
    private String updateDate;

    @Column(name = "incident_description")
    private String incidentDescription;
}
