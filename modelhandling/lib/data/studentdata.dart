import 'package:modelhandling/model/student.dart';

class StudentService {
  Future<List<Student>> fetchStudents() async {
    await Future.delayed(const Duration(seconds: 2));

    final rawData = [
      {'id': '2','name': 'Elizabeth Uy','age': 20,'gpa': 3.5,},
      {'id': '3','name': 'Jasmine Manaois','age': 21,'gpa': 1.75,},
      {'id': '4','name': 'Jeshua Bandong','age': 21,'gpa': 1.0,},
  ];
    return rawData.map((data) => Student.fromMap(data)).toList();
  }
}