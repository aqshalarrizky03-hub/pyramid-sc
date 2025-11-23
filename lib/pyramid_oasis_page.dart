import 'package:flutter/material.dart';
import 'coach_login_page.dart';

class PyramidOasisPage extends StatelessWidget {
  const PyramidOasisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: FittedBox(
          child: Container(
            width: 375,
            height: 812,
            color: const Color(0xFFE0E0E0), // latar sesuai gambar
            child: Stack(
              children: [
                // ===================== TOP PANEL =====================
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 100,
                    color: Colors.grey[500],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _circleWithCross(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _line(),
                            const SizedBox(height: 5),
                            _line(),
                          ],
                        ),
                        _circleWithCross(),
                      ],
                    ),
                  ),
                ),

                // ===================== USER TEXT =====================
                const Positioned(
                  top: 150,
                  left: 20,
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ),

                // ===================== CENTER BOX =====================
                // ===================== CENTER BOX =====================
                Positioned(
                  top: 230,
                  left: 25,
                  right: 25,
                  child: Container(
                    height: 240,
                    decoration: BoxDecoration(
                      color: Colors.grey[500],
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Stack(
                      children: [
                        // ◯ pojok kiri atas
                        Positioned(
                          top: 20,
                          left: 20,
                          child: _smallCircle(),
                        ),

                        // ◯ pojok kanan atas
                        Positioned(
                          top: 20,
                          right: 20,
                          child: _smallCircle(),
                        ),

                        // [ BOX LINE ATAS ]
                        Positioned(
                          top: 75,
                          left: 0,
                          right: 0,
                          child: Center(child: _roundedBoxLine()),
                        ),

                        // [ BOX LINE BAWAH + navigasi ]
                        Positioned(
                          top: 135,
                          left: 0,
                          right: 0,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const CoachLoginPage(),
                                ),
                              );
                            },
                            child: Center(child: _roundedBoxLine()),
                          ),
                        ),

                        // ◯ pojok kiri bawah
                        Positioned(
                          bottom: 20,
                          left: 20,
                          child: _smallCircle(),
                        ),

                        // ◯ pojok kanan bawah
                        Positioned(
                          bottom: 20,
                          right: 20,
                          child: _smallCircle(),
                        ),
                      ],
                    ),
                  ),
                ),

                // ===================== BOTTOM PANEL =====================
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 70,
                    color: Colors.grey[500],
                    alignment: Alignment.center,
                    child: _line(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ===================== Reusable UI Parts =====================

  Widget _circleWithCross() {
    return Container(
      width: 40,
      height: 40,
      decoration:
          const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: const Center(
        child: Text("✕", style: TextStyle(fontSize: 20, color: Colors.black)),
      ),
    );
  }

  Widget _smallCircle() {
    return Container(
      width: 30,
      height: 30,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _line() {
    return Container(width: 150, height: 2, color: Colors.black);
  }

  Widget _roundedBoxLine() {
    return Container(
      width: 220,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.center,
      child: Container(
        width: 130,
        height: 2,
        color: Colors.black,
      ),
    );
  }
}
