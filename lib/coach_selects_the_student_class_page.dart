import 'package:flutter/material.dart';
import 'features/coach/presentation/pages/coach_selects_students_page.dart';

class CoachSelectTheStudentClassPage extends StatelessWidget {
  const CoachSelectTheStudentClassPage({super.key});

  final Color _darkBlue = const Color(0xFF233055);
  final Color _yellow = const Color(0xFFFDD835);

  @override
  Widget build(BuildContext context) {
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
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "Selamat Datang di Aplikasi\nPyramid Oasis Swimming Club Akuatik",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: _darkBlue,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    children: [
                      Icon(Icons.waves, color: Colors.red[800]),
                      Text(
                        "Indonesia",
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

            // ================= BODY =================
            Expanded(
              child: Column(
                children: [
                  const SizedBox(height: 10),

                  Text(
                    "Welcome Coach\nMuhammad Aqshal Arrizky",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: _yellow,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 30),

                  // ================= CARD =================
                  Container(
                    width: 360,
                    height: 330, // card tetap
                    padding: const EdgeInsets.symmetric(
                      vertical: 30,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      color: _yellow.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Stack(
                      children: [
                        // dekorasi bulat
                        Positioned(
                          bottom: 12,
                          left: 12,
                          child: CircleAvatar(
                            radius: 16,
                            backgroundColor: _darkBlue,
                          ),
                        ),
                        Positioned(
                          bottom: 12,
                          right: 12,
                          child: CircleAvatar(
                            radius: 16,
                            backgroundColor: _darkBlue,
                          ),
                        ),

                        Column(
                          children: [
                            // ===== JUDUL TENGAH =====
                            Center(
                              child: Text(
                                "Pilih Kelas Murid",
                                style: TextStyle(
                                  color: _darkBlue,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),

                            const SizedBox(height: 30),

                            _buildClassButton(context, "Dasar"),
                            const SizedBox(height: 20),
                            _buildClassButton(context, "Semi-Pro"),
                            const SizedBox(height: 20),
                            _buildClassButton(context, "Progressif"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
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

  // ================= BUTTON KELAS =================
  Widget _buildClassButton(BuildContext context, String text) {
    return SizedBox(
      width: 220, // ⬅️ hanya button yang mengecil
      height: 48,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const CoachSelectsStudentsPage(),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: _darkBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: _yellow,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
