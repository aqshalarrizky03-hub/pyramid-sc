import 'package:flutter/material.dart';
import 'parent_select_student_page.dart';

class ParentSelectCoachPage extends StatelessWidget {
  const ParentSelectCoachPage({super.key});

  final Color _darkBlue = const Color(0xFF233055);
  final Color _yellow = const Color(0xFFFDD835);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _darkBlue,
      body: SafeArea(
        top: false,
        bottom: false,
        child: Column(
          children: [
            // ================= HEADER =================
            Container(
              padding: const EdgeInsets.only(
                  top: 50, left: 16, right: 16, bottom: 20),
              decoration: BoxDecoration(
                color: _yellow,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: Image.asset(
                      'assets/pyramid.png',
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.pool, size: 40),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "Selamat Datang di Aplikasi\nPyramid Oasis Swimming Club",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: _darkBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.waves, color: Colors.red[800], size: 30),
                        Text(
                          "Akuatik",
                          style: TextStyle(
                              fontSize: 10,
                              color: _darkBlue,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Indonesia",
                          style: TextStyle(fontSize: 8, color: _darkBlue),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // ================= SUB-HEADER (Title + Back) =================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: _yellow.withOpacity(0.11), // Slight background for visibility
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(Icons.arrow_back, color: Color(0xFFFDD835)), // Yellow icon
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "Pilih Pelatih Murid - Kelas Dasar",
                      textAlign: TextAlign.center, // As per image it looks centered relative to the remaining space or just centered
                      style: const TextStyle(
                        color: Color(0xFFFDD835),
                        fontSize: 16, // Adjusted to fit single line if needed
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 40), // Balance the back button spacing
                ],
              ),
            ),

            // ================= LIST PELATIH =================
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  _buildCoachCard(
                    context,
                    name: "Muhammad Aqshal Arrizky",
                    schedule: "Jumat - Sabtu - Minggu",
                  ),
                  _buildCoachCard(
                    context,
                    name: "Sambas Ratumangu",
                    schedule: "Jumat - Sabtu - Minggu",
                  ),
                  _buildCoachCard(
                    context,
                    name: "Dwi Raka",
                    schedule: "Sabtu - Minggu",
                  ),
                  _buildCoachCard(
                    context,
                    name: "Ayub",
                    schedule: "Jumat - Sabtu - Minggu",
                  ),
                ],
              ),
            ),

            // ================= FOOTER =================
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: _yellow,
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
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCoachCard(BuildContext context,
      {required String name, required String schedule}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const ParentSelectStudentPage()),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: _yellow,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            // Avatar Placeholder
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.person, size: 60, color: Colors.black),
              // Use an image here if available: Image.asset(...)
            ),
            const SizedBox(width: 15),
            // Text Info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: _darkBlue,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Hari Ngelatih:",
                    style: TextStyle(
                      color: _darkBlue,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    schedule,
                    style: TextStyle(
                      color: _darkBlue,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
