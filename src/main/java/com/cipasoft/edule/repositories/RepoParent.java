package com.cipasoft.edule.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.cipasoft.edule.models.Parent;

@Repository
public interface RepoParent extends JpaRepository<Parent, Integer> {
    @Query(value = "SELECT DISTINCT " +
            "pa.first_name AS first_name, " +
            "pa.last_name AS last_name, " +
            "pa.id_type AS id_type, " +
            "pa.identification AS identification, " +
            "pa.phone_number AS phone_number, " +
            "pa.email AS email, " +
            "pa.username AS username, " +
            "pa.password AS password " +
            "FROM parents AS pa " +
            "LEFT JOIN students stu ON stu.parent_id = pa.id " +
            "LEFT JOIN classrooms cla ON cla.id = stu.classroom_id " +
            "WHERE cla.classroom_name = :classroomName " +
            "ORDER BY pa.last_name", nativeQuery = true)
    List<Object[]> findParentsByClassroom(@Param("classroomName") String classroomName);
}
