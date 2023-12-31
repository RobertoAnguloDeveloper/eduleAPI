package com.cipasoft.edule.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cipasoft.edule.models.Student;
import com.cipasoft.edule.repositories.RepoStudent;

import java.util.List;
import java.util.Optional;

@Service
public class ServStudent {
    @Autowired
    private RepoStudent studentRepository;

    public List<Student> getAllStudents() {
        return studentRepository.findAll();
    }

    public Optional<Student> getStudentById(Integer id) {
        return studentRepository.findById(id);
    }

    public List<Object[]> getStudentsByClassroom(String classroomName) {
        return studentRepository.findStudentsByClassroom(classroomName);
    }

    public Student createStudent(Student student) {
        return studentRepository.save(student);
    }

    public Student updateStudent(Student student) {
        if (student != null && student.getId() != null) {
            Optional<Student> existingStudent = studentRepository.findById(student.getId());

            if (existingStudent.isPresent()) {
                Student updatedStudent = existingStudent.get();
                if (student.getFirstName() != null) {
                    updatedStudent.setFirstName(student.getFirstName());
                }
                if (student.getLastName() != null) {
                    updatedStudent.setLastName(student.getLastName());
                }
                if (student.getIdentification() != null) {
                    updatedStudent.setIdentification(student.getIdentification());
                }
                if (student.getEmail() != null) {
                    updatedStudent.setEmail(student.getEmail());
                }
                
                if (student.getUsername() != null) {
                    updatedStudent.setUsername(student.getUsername());
                }
                if (student.getPassword() != null) {
                    updatedStudent.setPassword(student.getPassword());
                }
                if (student.getClassroom() != null) {
                    updatedStudent.setClassroom(student.getClassroom());
                }
                if (student.getParent() != null) {
                    updatedStudent.setParent(student.getParent());
                }
                if (student.getId_type() != null) {
                    updatedStudent.setId_type(student.getId_type());
                }

                return studentRepository.save(updatedStudent);
            } else {
                return null;
            }
        } else {
            return null;
        }
    }

    public void deleteStudent(Integer id) {
        studentRepository.deleteById(id);
    }
}
