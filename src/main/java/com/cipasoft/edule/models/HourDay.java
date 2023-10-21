package com.cipasoft.edule.models;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

import jakarta.persistence.*;

@Entity
@Table(name = "hours_days")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class HourDay {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "day_id")
    private Day day;

    @ManyToOne
    @JoinColumn(name = "hour_id")
    private Hour hour;
}
