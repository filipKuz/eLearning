package eLearning.sf.converter;

import java.util.ArrayList;
import java.util.List;

import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import eLearning.sf.dto.StudentDto;
import eLearning.sf.model.Student;

@Component
public class StudentToStudentDto implements Converter<Student, StudentDto> {

	@Override
	public StudentDto convert(Student student) {
		StudentDto studentDto = new StudentDto();
		studentDto.setActive(student.getActive());
		studentDto.setStudentId(student.getStudentId());
		studentDto.setTranscriptNumber(student.getTranscriptNumber());
		studentDto.setUserId(student.getUser().getUserId());
		studentDto.setYear(student.getYear());
		studentDto.setDepartmentId(student.getDepartment().getDepartmentId());

		return studentDto;
	}

	public List<StudentDto> convert(List<Student> students) {
		List<StudentDto> retVal = new ArrayList<>();
		for (Student student : students) {
			retVal.add(convert(student));
		}

		return retVal;
	}
}
