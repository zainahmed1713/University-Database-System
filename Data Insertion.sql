INSERT INTO department VALUES(1001, 'CS', 'Khawaja Qasim');
INSERT INTO department VALUES(1002, 'IT', 'Summaira Nosheen');
INSERT INTO department VALUES(1003, 'SE', 'Asghar Shah');
INSERT INTO department VALUES(1004, 'BBA', 'Nawaz Sharif');
INSERT INTO department VALUES(1005, 'Psychology', 'Asif Ali Zardari');

INSERT INTO student VALUES(001, 'Umair', 'Saleem', '11111111111', 1001);
INSERT INTO student VALUES(002, 'Zain', 'Ahmed', '22222222222', 1001);
INSERT INTO student VALUES(003, 'Habib', 'Ullah', '33333333333', 1001);
INSERT INTO student VALUES(004, 'Sher', 'Aghan', '44444444444', 1002);
INSERT INTO student VALUES(005, 'Abdullah', 'Basharat', '55555555555', 1003);
INSERT INTO student VALUES(006, 'Hassan', 'Yousaf', '66666666666', 1002);
INSERT INTO student VALUES(007, 'Mohammad', 'Nasr', '77777777777', 1004);
INSERT INTO student VALUES(008, 'Asim', 'Qaiser', '88888888888', 1005);
INSERT INTO student VALUES(009, 'Abdullah', 'Awan', '99999999999', 1005);
INSERT INTO student VALUES(010, 'Salman', 'Shah', '01010101010', 1003);

INSERT INTO instructor VALUES(9001, 'Asghar', 'Ali Shah', 1001, '02020202020', 200000);
INSERT INTO instructor VALUES(9002, 'Summaira', 'Nosheen', 1001, '10101010100', 500000);
INSERT INTO instructor VALUES(9003, 'Shafiq', 'Ahmad', 1002, '20202020200', 150000);
INSERT INTO instructor VALUES(9004, 'Sara', 'Chauhdry', 1002, '03030303030', 100000);
INSERT INTO instructor VALUES(9005, 'Khurram', 'Ehsan', 1002, '40404040400', 100000);
INSERT INTO instructor VALUES(9006, 'Umar', 'Hameed', 1003, '50505050505', 100000);
INSERT INTO instructor VALUES(9007, 'Farhan', 'Sherazi', 1004, '60606060606', 50000);
INSERT INTO instructor VALUES(9008, 'Zia', 'Ur Rehman', 1005, '70707070707', 300000);
INSERT INTO instructor VALUES(9009, 'Numan', 'Aslam', 1003, '80808080808', 400000);
INSERT INTO instructor VALUES(9010, 'Sobia', 'Kanwal', 1005, '90909090909', 200000);

INSERT INTO course VALUES('CSC-220', 'DBMS', 1001, 3);
INSERT INTO course VALUES('CSC-320', 'OS', 1001, 3);
INSERT INTO course VALUES('CSC-221', 'DSA', 1002, 3);
INSERT INTO course VALUES('ENG-105', 'English', 1002, 3);
INSERT INTO course VALUES('GSC-114', 'Physics', 1003, 2);
INSERT INTO course VALUES('CSC-210', 'OOP', 1003, 3);
INSERT INTO course VALUES('ITC-311', 'IT PM', 1004, 3);
INSERT INTO course VALUES('ITC-226', 'Web', 1001, 2);
INSERT INTO course VALUES('ITC-321', 'Enterprise', 1004, 3);
INSERT INTO course VALUES('ITC-424', 'Human Mind', 1005, 2);

INSERT INTO takes VALUES(001, 'CSC-220', 4, 2, 'A');
INSERT INTO takes VALUES(001, 'CSC-320', 4, 2, 'A');
INSERT INTO takes VALUES(002, 'CSC-221', 3, 2, 'B-');
INSERT INTO takes VALUES(003, 'ENG-105', 1, 1, 'F');
INSERT INTO takes VALUES(003, 'GSC-114', 1, 1, 'C');
INSERT INTO takes VALUES(004, 'CSC-210', 2, 1, 'D');
INSERT INTO takes VALUES(005, 'ITC-311', 5, 3, 'B+');
INSERT INTO takes VALUES(005, 'ITC-226', 5, 3, 'A-');
INSERT INTO takes VALUES(009, 'ITC-321', 6, 3, 'C+');
INSERT INTO takes VALUES(010, 'ITC-424', 7, 4, 'D+');

INSERT INTO advisor VALUES(001, 9001);
INSERT INTO advisor VALUES(002, 9002);
INSERT INTO advisor VALUES(003, 9003);
INSERT INTO advisor VALUES(004, 9004);
INSERT INTO advisor VALUES(005, 9005);
INSERT INTO advisor VALUES(009, 9006);
INSERT INTO advisor VALUES(010, 9007);

INSERT INTO teaches VALUES(9001, 'CSC-220', 4, 2);
INSERT INTO teaches VALUES(9002, 'CSC-320', 4, 2);
INSERT INTO teaches VALUES(9003, 'CSC-221', 3, 2);
INSERT INTO teaches VALUES(9004, 'ENG-105', 1, 1);
INSERT INTO teaches VALUES(9005, 'GSC-114', 1, 1);
INSERT INTO teaches VALUES(9006, 'CSC-210', 2, 1);
INSERT INTO teaches VALUES(9007, 'ITC-311', 5, 3);
INSERT INTO teaches VALUES(9008, 'ITC-226', 5, 3);
INSERT INTO teaches VALUES(9009, 'ITC-321', 6, 3);
INSERT INTO teaches VALUES(9010, 'ITC-424', 7, 4);

-- displaying all tables
SELECT * FROM student;
SELECT * FROM instructor;
SELECT * FROM takes;
SELECT * FROM advisor;
SELECT * FROM department;
SELECT * FROM course;
SELECT * FROM teaches;