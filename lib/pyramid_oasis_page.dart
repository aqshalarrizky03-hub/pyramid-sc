import 'package:flutter/material.dart';
import 'coach_login_page.dart';
import 'parent_select_class_page.dart';

class PyramidOasisPage extends StatelessWidget {
  const PyramidOasisPage({super.key});

  final Color _darkBlue = const Color(0xFF233055);
  final Color _yellow = const Color(0xFFFDD835); // Adjustable yellow

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _darkBlue,
      body: SafeArea(
        top: false, // Allow header to go to top edge
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
                  // Logo Kiri (Pyramid)
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
                  // Logo Kanan (Akuatik placeholder)
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         // Placeholder for Akuatik Icon
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
                  width: 340,
                  height: 250,
                  decoration: BoxDecoration(
                    color: _yellow,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Stack(
                    children: [
                      // Dekorasi Lingkaran di Pojok (Efek Cutout/Hole)
                      // Kiri Atas
                      Positioned(
                        top: 20,
                        left: 20,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: _darkBlue,
                        ),
                      ),
                      // Kanan Atas
                      Positioned(
                        top: 20,
                        right: 20,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: _darkBlue,
                        ),
                      ),
                      // Kiri Bawah
                      Positioned(
                        bottom: 20,
                        left: 20,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: _darkBlue,
                        ),
                      ),
                      // Kanan Bawah
                      Positioned(
                        bottom: 20,
                        right: 20,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: _darkBlue,
                        ),
                      ),

                      // Tombol Tengah
                      Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Tombol Coach
                            SizedBox(
                              width: 250,
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: _darkBlue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => const CoachLoginPage(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Coach",
                                  style: TextStyle(
                                    color: _yellow,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            // Tombol Orang Tua
                            SizedBox(
                              width: 250,
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: _darkBlue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => const ParentSelectClassPage(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Orang Tua/Wali Murid",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: _yellow,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
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
}
