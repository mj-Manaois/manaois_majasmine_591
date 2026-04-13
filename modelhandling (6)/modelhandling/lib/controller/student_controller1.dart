import 'package:modelhandling/model/student2.dart';

class StudentController1 {
  final List<Student2> _students = [];

  List<Student2> getAllStudents(){
    return List.unmodifiable(_students);
  }

  void addStudent(String id, String name, String course, double gpa){
    final student = Student2(id: id, name: name, course: course, gpa: gpa);
    _students.add(student);
  }

  Student2? findById(String id){
    try {
      return _students.firstWhere((s) => s.id == id);
    } catch (e) {
      return null;
    }
  }

   bool deleteStudent(String id) {

    final index = _students.indexWhere((s) => s.id == id);
    if (index != -1) {
      _students.removeAt(index);
      return true;
    }
    return false;
  }

  bool updateStudent(String id, String newName, String newCourse, double newGPA){ 
    final index = _students.indexWhere((s) => s.id == id);
    if (index != -1) {
      _students[index] = Student2(id: id, name: newName, course: newCourse, gpa: newGPA);
      return true;
    }
    return false;
  }

  int getCount(){
    return _students.length;
  }
}