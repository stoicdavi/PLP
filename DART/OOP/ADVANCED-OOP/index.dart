class Student {
  String name;
  int age;
  String grade;
  
  Student(this.name, this.age, this.grade);
  
  void printStudent() {
    print("Student name: $name \nAge: $age \nGrade: $grade");
  }
}

class Teacher {
  String name;
  int age;
  String subject;
  
  Teacher(this.name, this.age, this.subject);
  
  String printTeacher() {
    print("Teacher Details");
    return "Teacher name: $name \nAge: $age \nSubject: $subject";
  }
}

class SchoolData {
  Student student;
  Teacher teacher;
  
  SchoolData(this.student, this.teacher);
  
  void printSchoolData() {
    print("School Data:");
    student.printStudent();
    print("\nTeacher Data:");
    print(teacher.printTeacher());
  }
}

void main() {
  Student student1 = Student("John", 12, "A");
  Teacher teacher1 = Teacher("Mr. Smith", 35, "Mathematics");
  
  SchoolData school = SchoolData(student1, teacher1);
  school.printSchoolData();
}
