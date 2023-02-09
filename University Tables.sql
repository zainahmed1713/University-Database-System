CREATE TABLE department
(
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    hod VARCHAR(50),
);

CREATE TABLE student
(
    std_id INT PRIMARY KEY,
    f_name VARCHAR(30),
    l_name VARCHAR(30),
    contact_num VARCHAR(11),
);
ALTER TABLE student ADD dept_id INT FOREIGN KEY REFERENCES department(dept_id);

CREATE TABLE instructor
(
    inst_id INT PRIMARY KEY,
    f_name VARCHAR(30),
    l_name VARCHAR(30),
    dept_id INT,
    contact_num VARCHAR(11),
    salary INT,
    FOREIGN KEY(dept_id) REFERENCES department(dept_id),
);

CREATE TABLE course
(
    course_id VARCHAR(10) PRIMARY KEY,
    title VARCHAR(30),
    dept_id INT,
    cred_hrs INT,
    FOREIGN KEY(dept_id) REFERENCES department(dept_id),
);

CREATE TABLE takes
(
    std_id INT,
    course_id VARCHAR(10),
    semester INT,
    year INT,
    grade VARCHAR(2),
    FOREIGN KEY(std_id) REFERENCES student(std_id),
    FOREIGN KEY(course_id) REFERENCES course(course_id),
);

CREATE TABLE advisor
(
    std_id INT,
    inst_id INT,
    FOREIGN KEY(std_id) REFERENCES student(std_id),
    FOREIGN KEY(inst_id) REFERENCES instructor(inst_id),
);


CREATE TABLE teaches
(
    inst_id INT,
    course_id VARCHAR(10),
    semester INT,
    year INT,
    FOREIGN KEY(inst_id) REFERENCES instructor(inst_id),
    FOREIGN KEY(course_id) REFERENCES course(course_id),
);