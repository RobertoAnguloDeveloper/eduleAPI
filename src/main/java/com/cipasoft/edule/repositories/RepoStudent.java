package com.cipasoft.edule.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.cipasoft.edule.models.Student;

@Repository
public interface RepoStudent extends JpaRepository<Student, Integer> {
    @Query(value = "SELECT " +
            "stu.first_name AS first_name, " +
            "stu.last_name AS last_name, " +
            "stu.id_type AS id_type, " +
            "stu.identification AS identification, " +
            "stu.email AS email, " +
            "stu.username AS username, " +
            "stu.password AS password, " +
            "CONCAT(pa.first_name,' ',pa.last_name) AS parent " +
            "FROM students AS stu " +
            "LEFT JOIN classrooms cla ON cla.id = stu.classroom_id " +
            "LEFT JOIN parents pa ON pa.id = stu.parent_id " +
            "WHERE cla.classroom_name = :classroomName" +
            " ORDER BY stu.last_name;", nativeQuery = true)
    List<Object[]> findStudentsByClassroom(@Param("classroomName") String classroomName);
}
