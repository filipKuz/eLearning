package eLearning.sf.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Transient;

import lombok.Data;

@Entity
@Data
public class Role {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long roleId;

	@Column(nullable = false, columnDefinition="VARCHAR(10)")
	private String name;

	@Column(nullable = false, columnDefinition = "tinyint(1) default 1")
	private Boolean active;
	
	@Transient
	@ManyToMany(mappedBy = "roles")
	private Set<User> users = new HashSet<>();
}
