import 'package:flutter/material.dart';
import 'coach_selects_the_student_class_page.dart';

class CoachSelectsStudentsPage extends StatelessWidget {
  const CoachSelectsStudentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: 375,
          height: 812,
          color: const Color(0xFFE6E6E6),
          child: Column(
            children: [
              // ============================================================
              // HEADER
              // ============================================================
              Container(
                height: 90,
                color: const Color(0xFFA6A6A6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _circleX(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _longLine(),
                        const SizedBox(height: 6),
                        _longLine(),
                      ],
                    ),
                    _circleX(),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // ============================================================
              // KOTAK KECIL + LINE
              // ============================================================
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                const CoachSelectsTheStudentClassPage(),
                          ),
                        );
                      },
                      child: Container(
                        width: 33,
                        height: 33,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(width: 30),
                    _longLine(),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // ============================================================
              // LIST KOLOM
              // ============================================================
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  children: [
                    _listItem(),
                    _listItem(),
                    _listItem(),
                    _listItem(),
                    _listItem(),
                  ],
                ),
              ),

              // ============================================================
              // FOOTER
              // ============================================================
              Container(
                height: 65,
                width: double.infinity,
                color: const Color(0xFFA6A6A6),
                alignment: Alignment.center,
                child: _longLine(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ============================================================
  // REUSABLE WIDGETS
  // ============================================================

  Widget _circleX() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: 42,
        height: 42,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: const Center(
          child: Text("✕", style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }

  Widget _longLine() {
    return Container(width: 130, height: 2, color: Colors.black);
  }

  Widget _lineSmall() {
    return Container(width: 95, height: 2, color: Colors.black);
  }

  Widget _listItem() {
    return Container(
      height: 65,
      margin: const EdgeInsets.only(bottom: 18),
      decoration: BoxDecoration(
        color: const Color(0xFFAAAAAA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _lineSmall(),

            Container(
              width: 38,
              height: 38,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
