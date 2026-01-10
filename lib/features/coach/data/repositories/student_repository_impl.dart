import '../../domain/entities/student.dart';
import '../../domain/repositories/student_repository.dart';

class StudentRepositoryImpl implements StudentRepository {
  @override
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