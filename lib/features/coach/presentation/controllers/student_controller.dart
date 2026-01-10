import '../../domain/entities/student.dart';
import '../../domain/usecases/get_students_usecase.dart';

class StudentController {
  final GetStudentsUseCase getStudentsUseCase;

  StudentController(this.getStudentsUseCase);

  List<Student> fetchStudents() {
    return getStudentsUseCase.execute();
  }
}