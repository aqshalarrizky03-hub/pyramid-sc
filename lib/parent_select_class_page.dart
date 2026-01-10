import 'package:flutter/material.dart';
import 'parent_select_coach_page.dart';

class ParentSelectClassPage extends StatelessWidget {
  const ParentSelectClassPage({super.key});

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
                top: 50,
                left: 16,
                right: 16,
                bottom: 20,
              ),
              decoration: BoxDecoration(
                color: _yellow,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: Image.asset(
                      'assets/pyramid.png',
                      fit: BoxFit.contain,
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
                    child: Column(
                      children: [
                        Icon(Icons.waves, color: Colors.red[800]),
                        Text(
                          "Akuatik",
                          style: TextStyle(
                            fontSize: 10,
                            color: _darkBlue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Indonesia",
                          style: TextStyle(
                            fontSize: 8,
                            color: _darkBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // ================= SUB HEADER (BACK) =================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: _yellow.withOpacity(0.11),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Color(0xFFFDD835),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Text(
                      "",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFFDD835),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 40),
                ],
              ),
            ),

            // ================= BODY =================
            Expanded(
              child: Center(
                child: Container(
                  width: 320,
                  height: 350,
                  decoration: BoxDecoration(
                    color: _yellow,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Stack(
                    children: [
                      // dekorasi bawah
                      Positioned(
                        bottom: 20,
                        left: 20,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: _darkBlue,
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        right: 20,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: _darkBlue,
                        ),
                      ),

                      // ================= CONTENT CARD =================
                      Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // ===== JUDUL (NAIK DIKIT) =====
                            Transform.translate(
                              offset: const Offset(0, -12),
                              child: Text(
                                "Pilih Kelas Murid/Anak Anda",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: _darkBlue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),

                            const SizedBox(height: 12),

                            _buildButton("Dasar / Toddler", () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) =>
                                      const ParentSelectCoachPage(),
                                ),
                              );
                            }),
                            const SizedBox(height: 18),
                            _buildButton("Semi-Pro", () {}),
                            const SizedBox(height: 18),
                            _buildButton("Progressif", () {}),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
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

  Widget _buildButton(String text, VoidCallback onPressed) {
    return SizedBox(
      width: 220,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: _darkBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: onPressed,
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