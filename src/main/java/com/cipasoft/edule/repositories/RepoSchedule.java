package com.cipasoft.edule.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.cipasoft.edule.models.Schedule;

import java.util.List;

@Repository
public interface RepoSchedule extends JpaRepository<Schedule, Integer> {

    @Query(nativeQuery = true, value =
            "SELECT " +
            "CONCAT('Day ', d.day_number) AS days, " +
            "h.hour AS hours, " +
            "su.subject_name AS subjects, " +
            "cl.classroom_name AS classrooms " +
            "FROM schedules sch " +
            "LEFT JOIN subjects_classrooms suclass ON suclass.id = sch.subject_classroom_id " +
            "LEFT JOIN classrooms cl ON cl.id = suclass.classroom_id " +
            "LEFT JOIN subjects su ON su.id = suclass.subject_id " +
            "LEFT JOIN users_subjects usu ON usu.subject_id = su.id " +
            "LEFT JOIN users u ON u.id = usu.user_id " +
            "LEFT JOIN hours_days hday ON hday.id = sch.hour_day_id " +
            "LEFT JOIN days d ON d.id = hday.day_id " +
            "LEFT JOIN hours h ON h.id = hday.hour_id " +
            "WHERE u.username = :username " +
            "ORDER BY d.day_number, h.hour")
    List<Object[]> findScheduleDetailsByUsername(@Param("username") String username);
}
