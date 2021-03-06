package eLearning.sf.serviceInterface;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import eLearning.sf.model.Exam;

public interface ExamServiceInterface {

	public Exam getOne(Long id);

	public List<Exam> findAll();

	public Exam save(Exam exam);

	public void delete(Long id);

	Page<Exam> listAllByPage(String searchTerm, Pageable pageable);

	public List<Exam> findAllByProfessorAndCourse(String professorUsername, Long courseId);

	public List<Exam> findAllByCourseAndStudent(Long courseId, String studentUsername);

	public Exam findByExamId(Long id);
}
