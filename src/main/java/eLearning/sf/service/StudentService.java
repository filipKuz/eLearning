package eLearning.sf.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import eLearning.sf.model.Student;
import eLearning.sf.repository.StudentRepository;
import eLearning.sf.serviceInterface.StudentServiceInterface;

@Service
public class StudentService implements StudentServiceInterface {

	@Autowired
	StudentRepository studentRepository;

	@Override
	public Student getOne(Long id) {
		return studentRepository.getOne(id);
	}

	@Override
	public List<Student> findAll() {
		return studentRepository.findAll();
	}

	@Override
	public Student save(Student student) {
		return studentRepository.save(student);
	}

	@Override
	public void delete(Long id) {
		studentRepository.deleteById(id);
	}

	@Override
	public Student getByUserId(Long id) {
		return studentRepository.getByUserUserId(id);
	}

	@Override
	public List<Student> findByCourse(Long courseId) {
		return studentRepository.findAllByCoursesCourseId(courseId);
	}

	@Override
	public Student findByUsername(String username) {
		return studentRepository.findByUserUsername(username);
	}

	@Override
	public Student findByStudentId(Long id) {
		return studentRepository.findByStudentId(id);
	}
}
