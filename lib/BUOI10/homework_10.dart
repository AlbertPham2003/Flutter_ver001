class Person {
  int id;
  String name;
  int age;
  String gender;
  Person({
    required this.id, required this.name, required this.age, required this.gender,});

  void displayInfo() {
    print("ID: $id");
    print("Tên: $name");
    print("Tuổi: $age");
    print("Giới tính: $gender");
  }
}

class Student extends Person {
  String grade;
  List<double> score;
  Student({
    required int id,
    required String name,
    required int age,
    required String gender,
    required this.grade,
    required this.score,
  }) : super(
          id: id,
          name: name,
          age: age,
          gender: gender,
        );
  double calculateAverageScore() {
    if (score.isEmpty) {
      return 0;
    }
    double total = 0;
    for (double item in score) {
      total += item;
    }
    return total / score.length;
  }

  void addScore(double newScore) {
    if (newScore < 0 || newScore > 10) {
      print("Điểm phải nằm trong khoảng 0 - 10");
      return;
    }
    score.add(newScore);
    print(
      "Đã thêm điểm $newScore cho học sinh $name",
    );
  }

  @override
  void displayInfo() {
    print("ID: $id");
    print("Tên: $name");
    print("Tuổi: $age");
    print("Giới tính: $gender");
    print("Lớp: $grade");
    print("Danh sách điểm: $score");
    print(
      "Điểm trung bình: "
      "${calculateAverageScore().toStringAsFixed(2)}",
    );
  }
}

class Teacher extends Person {
  String subject;
  double salary;
  Teacher({
    required int id,
    required String name,
    required int age,
    required String gender,
    required this.subject,
    required this.salary,
  }) : super(id: id, name: name, age: age, gender: gender,);

  @override
  void displayInfo() {
    print("ID: $id");
    print("Tên: $name");
    print("Tuổi: $age");
    print("Giới tính: $gender");
    print("Môn dạy: $subject");
    print("Lương: ${salary.toStringAsFixed(0)} VNĐ");
  }
}

class Classroom {
  int id;
  String name;
  List<Student> students;
  Teacher? teacher;
  Classroom({
    required this.id,
    required this.name,
    List<Student>? students,
    this.teacher,
  }) : students = students ?? [];

  void addStudent(Student student) {
    bool isExist = students.any(
      (item) => item.id == student.id,
    );
    if (isExist) {
      print(
        "Học sinh ${student.name} đã tồn tại trong lớp $name.",
      );
      return;
    }
    students.add(student);
    print(
      "Đã thêm học sinh ${student.name} vào lớp $name.",
    );
  }

  void removeStudent(int studentId) {
    int oldLength = students.length;
    students.removeWhere(
      (student) => student.id == studentId,
    );
    if (students.length < oldLength) {
      print(
        "Đã xóa học sinh có ID $studentId khỏi lớp $name.",
      );
    } else {
      print(
        "Không tìm thấy học sinh có ID $studentId.",
      );
    }
  }

  void assignTeacher(Teacher teacher) {
    this.teacher = teacher;
    print(
      "Đã phân công giáo viên ${teacher.name} "
      "cho lớp $name.",
    );
  }

  void displayInfo() {
    print("ID lớp: $id");
    print("Tên lớp: $name");
    if (teacher != null) {
      print("Giáo viên phụ trách:");
      print("  - Tên: ${teacher!.name}");
      print("  - Môn: ${teacher!.subject}");
    } else {
      print("Giáo viên phụ trách: Chưa có");
    }
    print("Danh sách học sinh:");
    if (students.isEmpty) {
      print("  Chưa có học sinh.");
    } else {
      for (int i = 0; i < students.length; i++) {
        Student student = students[i];
        print(
          "  ${i + 1}. "
          "${student.name} "
          "| ĐTB: "
          "${student.calculateAverageScore().toStringAsFixed(2)}",
        );
      }
    }
    print("Tổng số học sinh: ${students.length}");
  }
}

class SchoolManagement {
  List<Student> students = [];
  List<Teacher> teachers = [];
  List<Classroom> classrooms = [];

  void addStudent(Student student) {
    bool isExist = students.any(
      (item) => item.id == student.id,
    );
    if (isExist) {
      print(
        "Học sinh có ID ${student.id} đã tồn tại.",
      );
      return;
    }
    students.add(student);
    print(
      "Đã thêm học sinh: ${student.name}",
    );
  }

  void addTeacher(Teacher teacher) {
    bool isExist = teachers.any(
      (item) => item.id == teacher.id,
    );
    if (isExist) {
      print(
        "Giáo viên có ID ${teacher.id} đã tồn tại.",
      );
      return;
    }
    teachers.add(teacher);
    print(
      "Đã thêm giáo viên: ${teacher.name}",
    );
  }

  void addClassroom(Classroom classroom) {
    bool isExist = classrooms.any(
      (item) => item.id == classroom.id,
    );
    if (isExist) {
      print(
        "Lớp học có ID ${classroom.id} đã tồn tại.",
      );
      return;
    }
    classrooms.add(classroom);
    print(
      "Đã thêm lớp: ${classroom.name}",
    );
  }

  void displayAllStudents() {
    if (students.isEmpty) {
      print("Chưa có học sinh.");
      return;
    }
    for (Student student in students) {
      student.displayInfo();
      print("");
    }
  }

  void displayAllTeachers() {
    if (teachers.isEmpty) {
      print("Chưa có giáo viên.");
      return;
    }
    for (Teacher teacher in teachers) {
      teacher.displayInfo();
      print("");
    }
  }

  void displayAllClassrooms() {
    if (classrooms.isEmpty) {
      print("Chưa có lớp học.");
      return;
    }
    for (Classroom classroom in classrooms) {
      classroom.displayInfo();
    }
  }

  void displayReport() {
    print("Tổng số học sinh: ${students.length}");
    print("Tổng số giáo viên: ${teachers.length}");
    print("Tổng số lớp học: ${classrooms.length}");
    print("");
    for (Classroom classroom in classrooms) {
      print("Lớp: ${classroom.name}");
      if (classroom.teacher != null) {
        print(
          "Giáo viên: ${classroom.teacher!.name}",
        );
      } else {
        print("Giáo viên: Chưa có");
      }
      print("Danh sách điểm:");
      if (classroom.students.isEmpty) {
        print("  Chưa có học sinh.");
      } else {
        for (Student student in classroom.students) {
          print(
            "  - ${student.name}: "
            "${student.calculateAverageScore().toStringAsFixed(2)}",
          );
        }
      }
    }
  }
}

void main() {
  SchoolManagement school = SchoolManagement();
  Student student1 = Student(
    id: 1,
    name: "Nguyễn Văn A",
    age: 16,
    gender: "Nam",
    grade: "12A1",
    score: [8.0, 7.5, 9.0],
  );
  Student student2 = Student(
    id: 2,
    name: "Trần Thị B",
    age: 16,
    gender: "Nữ",
    grade: "12A2",
    score: [9.0, 8.5, 9.5],
  );
  Student student3 = Student(
    id: 3,
    name: "Lê Văn C",
    age: 16,
    gender: "Nam",
    grade: "12A1",
    score: [7.0, 6.5, 8.0],
  );

  school.addStudent(student1);
  school.addStudent(student2);
  school.addStudent(student3);

  Teacher teacher1 = Teacher(
    id: 101,
    name: "Nguyễn Thị L",
    age: 35,
    gender: "Nữ",
    subject: "Toán",
    salary: 15000000,
  );
  Teacher teacher2 = Teacher(
    id: 102,
    name: "Phạm Văn N",
    age: 40,
    gender: "Nam",
    subject: "Vật lý",
    salary: 17000000,
  );

  school.addTeacher(teacher1);
  school.addTeacher(teacher2);

  Classroom class12A1 = Classroom(
    id: 1001,
    name: "12A1",
  );
  Classroom class12A2 = Classroom(
    id: 1002,
    name: "12A2",
  );

  school.addClassroom(class12A1);
  school.addClassroom(class12A2);
  class12A1.addStudent(student1);
  class12A1.addStudent(student2);
  class12A2.addStudent(student3);
  class12A1.assignTeacher(teacher1);
  class12A2.assignTeacher(teacher2);
  student1.addScore(10.0);
  school.displayAllStudents();
  school.displayAllTeachers();
  school.displayAllClassrooms();
  school.displayReport();
}