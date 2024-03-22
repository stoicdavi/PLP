class Employee{
  void salary(){
    print("The salary of an employee is 1000\$");
  }
}
class Manager extends Employee{
  
  void salary(){
    print("The salary of a manager is 2000\$");
  }
}
void main(){
  Manager emp = Manager();
  emp.salary();
}