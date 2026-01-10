import '../entities/student.dart';
import '../repositories/student_repository.dart';

class GetStudentsUseCase {
  final StudentRepository repository;

  GetStudentsUseCase(this.repository);

  List<Student> execute() {
    return repository.getStudents();
  }
}