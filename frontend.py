import pyodbc
import os

conn = pyodbc.connect('Driver={ODBC DRIVER 17 for SQL SERVER};Server=Zain;Database=project;UID=zain;PWD=4648790zain!')


def main_menu():
    os.system('cls')
    while (True):
        print('\n\n\t\t\tWelcome to Bahria University\t\t\t\n\n')
        print('Select an Operation:\n')
        choice = int(input('1. Show Students\n2. Show Instructors\n3. Add Student\n4. Add Instructor\n5. Student Courses\n6. Instructor Courses\n7. Check Grades\n8. Exit\n'))

        match choice:
            case 1:
                os.system('cls')
                show_students()
            case 2:
                os.system('cls')
                show_instructors()
            case 3:
                os.system('cls')
                insert_students()
            case 4:
                os.system('cls')
                insert_instructor()
            case 5:
                os.system('cls')
                std_course()
            case 6:
                os.system('cls')
                inst_course()
            case 7:
                os.system('cls')
                check_grade()
            case _:
                quit()


def insert_students():
    while (True):
        std_id = int(input("Enter Student's ID:\n"))
        f_name = input("Enter Student's First Name:\n")
        l_name = input("Enter Student's Last Name:\n")
        num = input("Enter Student's Contact Number:\n")
        dept_id = int(input("Enter Student's Dept ID: (1001-1005)\n"))

        cursor = conn.cursor()
        cursor.execute("INSERT INTO student VALUES(?,?,?,?,?)", (std_id, f_name, l_name, num, dept_id))
        cursor.commit()

        choice = input('Do you want to add another student? (Y/N)\n')
        if choice == 'y' or choice == 'Y':
            os.system('cls')
            continue
        else:
            main_menu()


def insert_instructor():
    while (True):
        inst_id = input("Enter Instructor's ID:\n")
        f_name = input("Enter Instructor's First Name:\n")
        l_name = input("Enter Instructor's Last Name:\n")
        dept_id = input("Enter Instructor's Dept ID: (1001-1005)\n")
        num = input("Enter Instructor's Contact Number:\n")
        salary = input("Enter Instructor's Salary:\n")

        cursor = conn.cursor()
        cursor.execute("INSERT INTO instructor VALUES(?,?,?,?,?,?)", (inst_id, f_name, l_name, dept_id, num, salary))
        cursor.commit()

        choice = input('Do you want to add another instructor? (Y/N)\n')
        if choice == 'y' or choice == 'Y':
            os.system('cls')
            continue
        else:
            main_menu()


def show_students():
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM student')
    for i in cursor:
        print(i)
    choice = input('Press any key to jump to main menu:\n')
    if choice == 'a':
        main_menu()
    else:
        main_menu()


def show_instructors():
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM instructor')
    for i in cursor:
        print(i)
    choice = input('Press any key to jump to main menu:\n')
    if choice == 'a':
        main_menu()
    else:
        main_menu()


def std_course():
    cursor = conn.cursor()
    cursor.execute('SELECT s.std_id, s.f_name, s.l_name, t.course_id, t.semester, c.title, c.cred_hrs FROM student s, takes t, course c WHERE s.std_id = t.std_id AND t.course_id = c.course_id;')
    for i in cursor:
        print(i)
    choice = input('Press any key to jump to main menu:\n')
    if choice == 'a':
        main_menu()
    else:
        main_menu()


def inst_course():
    cursor = conn.cursor()
    cursor.execute('SELECT i.inst_id, i.f_name, i.l_name, t.course_id, t.semester, c.title FROM instructor i, teaches t, course c WHERE t.inst_id = i.inst_id AND t.course_id = c.course_id;')
    for i in cursor:
        print(i)
    choice = input('Press any key to jump to main menu:\n')
    if choice == 'a':
        main_menu()
    else:
        main_menu()


def check_grade():
    cursor = conn.cursor()
    cursor.execute('SELECT s.std_id, s.f_name, s.l_name, c.title, t.semester, t.grade FROM student s, takes t, course c WHERE s.std_id = t.std_id AND t.course_id = c.course_id;')
    for i in cursor:
        print(i)
    choice = input('Press any key to jump to main menu:\n')
    if choice == 'a':
        main_menu()
    else:
        main_menu()


main_menu()
