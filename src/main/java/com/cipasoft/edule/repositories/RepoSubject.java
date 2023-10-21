package com.cipasoft.edule.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.cipasoft.edule.models.Subject;

@Repository
public interface RepoSubject extends JpaRepository<Subject, Integer> {
    @Query(value = "SELECT CONCAT(ut.first_name, ' ', ut.last_name) AS Teachers_name, " +
                   "CONCAT('Day ', hday.day_id) AS Days, " +
                   "hour.hour AS Hours, " +
                   "croom.classroom_name AS Classroom, " +
                   "s.subject_name AS Subjects " +
                   "FROM users_subjects ust " +
                   "JOIN users ut ON ut.id = ust.user_id " +
                   "JOIN roles rt ON rt.id = ut.role_id " +
                   "JOIN subjects s ON s.id = ust.subject_id " +
                   "LEFT JOIN subjects_classrooms subclassroom ON subclassroom.subject_id = s.id " +
                   "LEFT JOIN classrooms croom ON croom.id = subclassroom.classroom_id " +
                   "LEFT JOIN hours hour ON hour.subject_id = s.id " +
                   "LEFT JOIN hours_days hday ON hday.hour_id = hour.id " +
                   "LEFT JOIN days day ON day.id = hday.day_id " +
                   "WHERE rt.id = :roleId " +
                   "AND ut.identification = :identification " +
                   "ORDER BY day.day_number ASC", nativeQuery = true)
    List<Object[]> customQuery(@Param("roleId") Integer roleId, @Param("identification") String identification);
}
