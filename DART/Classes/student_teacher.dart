import '../OOP/ADVANCED-OOP/index.dart';

class Student{
  String name;
  int age;
  int grade_level;

  Student(this.name, this.age, this.grade_level);
  void printStudent(){
    print("Name: $name, Age: $age, Grade Level: $grade_level");
  }
}
class Teacher{
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  void printTeacher(){
    print("Name: $name, Age: $age, Subject: $subject");
  }
}

class School{
  Student? student;
  Teacher? teacher;

  void addStudent(String name, int age, int grade_level){
    student = Student(name, age, grade_level);
  }

  void addTeacher(String name, int age, String subject){
    teacher = Teacher(name, age, subject);
  }
}

void main(){
  School school = School();
  school.addStudent("David", 20, 300);
  school.addTeacher("Mr. John", 40, "Mathematics");

  school.student?.printStudent();
  school.teacher?.printTeacher();
}