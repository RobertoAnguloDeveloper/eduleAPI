package com.cipasoft.edule.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.cipasoft.edule.models.User;

@Repository
public interface RepoUser extends JpaRepository<User, Integer> {
    @Query(value = "SELECT " +
            "su.subject_name AS subject_name, " +
            "u.first_name AS first_name, " +
            "u.last_name AS last_name, " +
            "u.id_type AS id_type, " +
            "u.identification AS identification, " +
            "u.email AS email, " +
            "u.username AS username, " +
            "u.password AS password " +
            "FROM users AS u " +
            "LEFT JOIN users_subjects usub ON usub.user_id = u.id " +
            "LEFT JOIN subjects su ON su.id = usub.subject_id " +
            "LEFT JOIN subjects_classrooms scla ON scla.subject_id = su.id " +
            "LEFT JOIN classrooms cla ON cla.id = scla.classroom_id " +
            "WHERE cla.classroom_name = :classroomName " +
            "ORDER BY su.subject_name, u.last_name", nativeQuery = true)
    List<Object[]> findUsersByClassroom(@Param("classroomName") String classroomName);
}
