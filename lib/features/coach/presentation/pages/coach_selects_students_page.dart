import 'package:flutter/material.dart';

// ===== CLEAN ARCH IMPORT =====
import '../../domain/entities/student.dart';
import '../controllers/student_controller.dart';
import '../../domain/usecases/get_students_usecase.dart';
import '../../data/repositories/student_repository_impl.dart';

class CoachSelectsStudentsPage extends StatelessWidget {
  const CoachSelectsStudentsPage({super.key});

  final Color _darkBlue = const Color(0xFF233055);
  final Color _yellow = const Color(0xFFFDD835);

  @override
  Widget build(BuildContext context) {
    // ===== CONTROLLER (CLEAN WAY) =====
    final StudentController controller = StudentController(
      GetStudentsUseCase(
        StudentRepositoryImpl(),
      ),
    );

    // ===== DATA FROM CONTROLLER =====
    final List<Student> students = controller.fetchStudents();

    return Scaffold(
      backgroundColor: _darkBlue,
      body: SafeArea(
        child: Column(
          children: [
            // ================= HEADER =================
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 20,
              ),
              decoration: BoxDecoration(
                color: _yellow.withOpacity(0.9),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/pyramid.png',
                    width: 45,
                    height: 45,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "Pyramid Oasis Swimming Club",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: _darkBlue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    children: [
                      Icon(Icons.waves, color: Colors.red[800]),
                      Text(
                        "Akuatik\nIndonesia",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10,
                          color: _darkBlue,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // ================= BACK BUTTON =================
            Padding(
              padding: const EdgeInsets.all(16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: _yellow.withOpacity(0.12),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: _yellow,
                    ),
                  ),
                ),
              ),
            ),

            // ================= TITLE =================
            Text(
              "Pilih Murid",
              style: TextStyle(
                color: _yellow,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            // ================= SEARCH BAR =================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                decoration: BoxDecoration(
                  color: _yellow.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Masukan Nama Murid",
                          hintStyle: TextStyle(
                            color: _darkBlue.withOpacity(0.4),
                            fontWeight: FontWeight.bold,
                          ),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: _darkBlue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.search,
                      color: _darkBlue,
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            // ================= LIST MURID =================
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                itemCount: students.length,
                itemBuilder: (context, index) {
                  return _buildStudentCard(students[index].name);
                },
              ),
            ),

            // ================= FOOTER =================
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: _yellow.withOpacity(0.9),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Center(
                child: Text(
                  "@pyramid_oasis",
                  style: TextStyle(
                    color: _darkBlue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ================= STUDENT CARD =================
  Widget _buildStudentCard(String name) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 60,
      decoration: BoxDecoration(
        color: _yellow.withOpacity(0.9),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              name,
              style: TextStyle(
                color: _darkBlue,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              border: Border.all(color: _darkBlue, width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.edit,
              color: _darkBlue,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}