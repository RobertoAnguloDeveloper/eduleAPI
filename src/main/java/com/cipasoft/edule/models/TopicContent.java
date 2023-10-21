package com.cipasoft.edule.models;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

import jakarta.persistence.*;

@Entity
@Table(name = "topic_contents")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class TopicContent {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "topic_name")
    private String topic_name;

    private String activity;

    @Column(name = "pending_homework")
    private String pendingHomework;

    private String resources;

    @ManyToOne
    @JoinColumn(name = "topic_id")
    private Topic topic;
}
