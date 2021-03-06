package eLearning.sf.dto;

import javax.validation.constraints.NotBlank;

import org.hibernate.validator.constraints.Length;

import lombok.Data;

@Data
public class DepartmentDto {

	private Long departmentId;

	@NotBlank(message="Name cannot be empty!")
	@Length(max=200, message="Name can not contain more than 20 characters")
	private String name;

	private Boolean active;

	public DepartmentDto() {};
	
	public DepartmentDto(Long departmentId, String name, Boolean active) {
		this.departmentId = departmentId;
		this.name = name;
		this.active = active;
	}

}
