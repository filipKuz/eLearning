INSERT INTO user (address, date_of_birth, first_name, last_name, image_path, password, phone_number, username) VALUES ('Address 1', '1994-05-14', 'Filip', 'Kuzmanovic', 'zz.jpg', '$2a$10$Bx1DUNCVK4MfhUcX7d5D3uMqtkZLNQ.jNwnHvQWHiFU/7JSwv4TJu', 060662311, 'fk')
INSERT INTO user (address, date_of_birth, first_name, last_name, image_path, password, phone_number, username) VALUES ('Address 2', '1995-01-04', 'Name', 'LastName', 'default.jpeg', '$2a$10$Bx1DUNCVK4MfhUcX7d5D3uMqtkZLNQ.jNwnHvQWHiFU/7JSwv4TJu', 0652321123, 'un')
INSERT INTO user (address, date_of_birth, first_name, last_name, image_path, password, phone_number, username) VALUES ('Address 3', '1996-02-17', 'Name2', 'LastName2', 'default.jpeg', '$2a$10$Bx1DUNCVK4MfhUcX7d5D3uMqtkZLNQ.jNwnHvQWHiFU/7JSwv4TJu', 061633311, 'nu')
INSERT INTO user (address, date_of_birth, first_name, last_name, image_path, password, phone_number, username, active) VALUES ('Address 41', '1991-05-14', 'Neak', 'Neaktivan', 'default.jpg', '$2a$10$Bx1DUNCVK4MfhUcX7d5D3uMqtkZLNQ.jNwnHvQWHiFU/7JSwv4TJu', 060662311, 'deac', false)
--sifra = nnn

INSERT INTO role (name) values ('ADMIN')
INSERT INTO role (name) values ('PROFESSOR')
INSERT INTO role (name) values ('STUDENT')

INSERT INTO user_roles (user_id, role_id) values (1, 1)
INSERT INTO user_roles (user_id, role_id) values (1, 2)
INSERT INTO user_roles (user_id, role_id) values (2, 2)
INSERT INTO user_roles (user_id, role_id) values (2, 3)
INSERT INTO user_roles (user_id, role_id) values (3, 3)
INSERT INTO user_roles (user_id, role_id) values (4, 3)


INSERT INTO department(department_id, name, active) values (1,"Softverske i informacione tehnologije",1)

INSERT INTO student (transcript_number, year, user_user_id, department_id) VALUES ('12345', 1, 1, 1); 
INSERT INTO student (transcript_number, year, user_user_id, department_id) VALUES ('11345', 1, 2, 1);
INSERT INTO student (transcript_number, year, user_user_id, department_id) VALUES ('22345', 2, 3, 1);

INSERT INTO professor_type (name , active) values ('type 1' , 1 )
INSERT INTO professor_type (name , active) values ('type 2' , 1 )


INSERT INTO professor (type_id , active, user_user_id ) values (1 , 1 , 1)
INSERT INTO professor (type_id , active, user_user_id ) values (2 , 1 , 2)
INSERT INTO professor (type_id , active, user_user_id ) values (1 , 1 , 3)

INSERT INTO pre_exam_obligation_type (pre_examotype_id, name , active) values(1,"Kolokvijum",1)
INSERT INTO pre_exam_obligation_type (pre_examotype_id, name , active) values(2,"Domaci",1)
INSERT INTO pre_exam_obligation_type (pre_examotype_id, name , active) values(3,"Projekat",1)

INSERT INTO course (course_id, name , active,department_id) values (1, "Osnove programiranja",1,1)
INSERT INTO course (course_id, name , active,department_id) values (2, "Matematika", 1,1)
INSERT INTO course (course_id, name , active,department_id) values (3, "Engleski jezik", 1,1)

INSERT INTO pre_exam_obligation(pre_examoid, name, active ,course_id,max_points,type_id)values(1,"Kolokvijum 1",1,1,30,1)
INSERT INTO pre_exam_obligation(pre_examoid, name, active ,course_id,max_points,type_id)values(2,"Kolokvijum 2",1,1,25,1)
INSERT INTO pre_exam_obligation(pre_examoid, name, active ,course_id,max_points,type_id)values(3,"Kolokvijum 3",1,10,1)
INSERT INTO pre_exam_obligation(pre_examoid, name, active ,course_id,max_points,type_id)values(4,"Domaci 1",1,1,15,2)
INSERT INTO pre_exam_obligation(pre_examoid, name, active ,course_id,max_points,type_id)values(5,"Kolokvijum 1",1,2,15,1)
INSERT INTO pre_exam_obligation(pre_examoid, name, active ,course_id,max_points,type_id)values(6,"Kolokvijum 2",1,2,15,1)
INSERT INTO pre_exam_obligation(pre_examoid, name, active ,course_id,max_points,type_id)values(7,"Domaci 1",1,2,15,2)
INSERT INTO pre_exam_obligation(pre_examoid, name, active ,course_id,max_points,type_id)values(8,"Kolokvijum 1",1,3,15,1)

INSERT INTO pre_exam_obligations_records(pre_examorecords_id, date, pre_exam_obligation_id,student_id, points, passed, active)values(1,'2018-02-17',1,1,30,1,0)
INSERT INTO pre_exam_obligations_records(pre_examorecords_id, date, pre_exam_obligation_id,student_id, points, passed, active)values(8,'2018-02-17',1,1,7,1,0)
INSERT INTO pre_exam_obligations_records(pre_examorecords_id, date, pre_exam_obligation_id,student_id, points, passed, active)values(9,'2018-02-17',1,1,50,1,1)
INSERT INTO pre_exam_obligations_records(pre_examorecords_id, date, pre_exam_obligation_id,student_id, points, passed, active)values(10,'2018-02-17',1,1,32,1,0)
INSERT INTO pre_exam_obligations_records(pre_examorecords_id, date, pre_exam_obligation_id,student_id, points, passed, active)values(2,'2018-02-17',1,2,22,1,1)
INSERT INTO pre_exam_obligations_records(pre_examorecords_id, date, pre_exam_obligation_id,student_id, points, passed, active)values(3,'2018-02-17',1,3,20,1,1)
INSERT INTO pre_exam_obligations_records(pre_examorecords_id, date, pre_exam_obligation_id,student_id, points, passed, active)values(4,'2018-02-17',2,1,15,1,1)
INSERT INTO pre_exam_obligations_records(pre_examorecords_id, date, pre_exam_obligation_id,student_id, points, passed, active)values(5,'2018-02-17',2,2,14,1,1)
INSERT INTO pre_exam_obligations_records(pre_examorecords_id, date, pre_exam_obligation_id,student_id, points, passed, active)values(6,'2018-02-17',2,3,10,1,1)
INSERT INTO pre_exam_obligations_records(pre_examorecords_id, date, pre_exam_obligation_id,student_id, points, passed, active)values(7,'2018-02-17',2,3,7,1,1)

INSERT INTO payment (active, description, value , student_id ) values (1 , "payment 1" , 1000 , 1)
INSERT INTO payment (active, description, value , student_id ) values (1 , "payment 2" , 2000 , 2)
INSERT INTO payment (active, description, value , student_id ) values (1 , "payment 3" , 3000 , 3)

INSERT INTO exam_term(month, name, active) values (1,"Januarski rok", 1)
INSERT INTO exam_term(month, name, active) values (2,"Februarski rok", 1)
INSERT INTO exam_term(month, name, active) values (3,"Martovski rok", 1)
INSERT INTO exam_term(month, name, active) values (4,"Aprilski rok", 1)
INSERT INTO exam_term(month, name, active) values (5,"Majski rok", 1)
INSERT INTO exam_term(month, name, active) values (6,"Junski rok", 1)
INSERT INTO exam_term(month, name, active) values (7,"Julski rok", 1)
INSERT INTO exam_term(month, name, active) values (8,"Avgustovski rok", 1)
INSERT INTO exam_term(month, name, active) values (9,"Septembarski rok", 1)
INSERT INTO exam_term(month, name, active) values (10,"Oktobarski rok", 1)
INSERT INTO exam_term(month, name, active) values (11,"Novembarski rok", 1)
INSERT INTO exam_term(month, name, active) values (12,"Decembarski rok", 1)

INSERT INTO exam (active, date, course_id, exam_term_id) VALUES (1, '2019-01-01', 1, 1);
INSERT INTO exam (active, date, course_id, exam_term_id) VALUES (1, '2019-01-02', 1, 2);
INSERT INTO exam (active, date, course_id, exam_term_id) VALUES (1, '2019-01-03', 1, 3);
INSERT INTO exam (active, date, course_id, exam_term_id) VALUES (1, '2019-01-01', 2, 1);
INSERT INTO exam (active, date, course_id, exam_term_id) VALUES (1, '2019-01-02', 2, 2);
INSERT INTO exam (active, date, course_id, exam_term_id) VALUES (1, '2019-01-03', 2, 3);

INSERT INTO professor_course (professor_id, course_id) VALUES (1, 1);
INSERT INTO professor_course (professor_id, course_id) VALUES (1, 2);
INSERT INTO professor_course (professor_id, course_id) VALUES (2, 1);

INSERT INTO payment (active , description, value , student_id ) values (1 , "payment 1" , 1000 , 1)
INSERT INTO payment (active , description, value , student_id ) values (1 , "payment 2" , 2000 , 2)
INSERT INTO payment (active , description, value , student_id ) values (1 , "payment 3" , 3000 , 3)
