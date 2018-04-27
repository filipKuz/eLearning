package eLearning.sf.serviceInterface;

import java.util.List;

import eLearning.sf.model.ExamStudentRecords;

public interface ExamStudentRecordsServiceInterface {

	public ExamStudentRecords getOne(Long id);

	public List<ExamStudentRecords> findAll();

	public ExamStudentRecords save(ExamStudentRecords exam);

	public void delete(Long id);
}