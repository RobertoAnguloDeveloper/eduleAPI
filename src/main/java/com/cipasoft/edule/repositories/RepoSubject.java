package com.cipasoft.edule.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.cipasoft.edule.models.Subject;

@Repository
public interface RepoSubject extends JpaRepository<Subject, Integer> {
    @Query(value = "SELECT " +
            "su.subject_name AS subjects " +
            "FROM subjects AS su " +
            "LEFT JOIN subjects_classrooms suclas ON suclas.subject_id = su.id " +
            "LEFT JOIN classrooms cla ON cla.id = suclas.classroom_id " +
            "WHERE cla.classroom_name = :classroomName " +
            "ORDER BY su.subject_name", nativeQuery = true)
    List<String> findSubjectsByClassroom(@Param("classroomName") String classroomName);
}