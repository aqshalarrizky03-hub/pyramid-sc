import '../entities/student.dart';

class StudentRepository {
  List<Student> getStudents() {
    return [
      Student(name: 'Bara'),
      Student(name: 'Bilal'),
      Student(name: 'Fatih'),
      Student(name: 'Arshad'),
      Student(name: 'Dawai'),
    ];
  }
}