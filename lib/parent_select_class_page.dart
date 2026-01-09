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
            // Exactly the same as the main page
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
                   // Logo Kiri
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
                  // Teks Tengah
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
                   // Logo Kanan
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
                             fontWeight: FontWeight.bold
                           ),
                         ),
                         Text(
                           "Indonesia",
                           style: TextStyle(
                             fontSize: 8, 
                             color: _darkBlue
                           ),
                         )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // ================= BODY =================
            Expanded(
              child: Center(
                child: Container(
                  width: 320, // Slightly wider for this page
                  height: 420, // Taller to fit 3 buttons and text
                  decoration: BoxDecoration(
                    color: _yellow,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Stack(
                    children: [
                      // Dekorasi Lingkaran (Hanya di Bawah)
                      // Kiri Bawah
                      Positioned(
                        bottom: 20,
                        left: 20,
                        child: CircleAvatar(
                          radius: 20, // Size looks a bit bigger in reference
                          backgroundColor: _darkBlue,
                        ),
                      ),
                      // Kanan Bawah
                      Positioned(
                        bottom: 20,
                        right: 20,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: _darkBlue,
                        ),
                      ),

                      // Content
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Judul
                            Text(
                              "Pilih Kelas Murid/Anak Anda",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: _darkBlue,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 30),

                            // Tombol Dasar/Toddler
                            _buildButton("Dasar/Toodler", () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const ParentSelectCoachPage(),
                                  ),
                                );
                            }),
                            const SizedBox(height: 20),
                            
                            // Tombol Semi-Pro
                            _buildButton("Semi-Pro", () {}),
                            const SizedBox(height: 20),

                            // Tombol Progressif
                            _buildButton("Progressif", () {}),
                            
                            const SizedBox(height: 30), // Spacing for bottom circles
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
            color: _yellow, // Matching yellow text
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
