import 'package:flutter/material.dart';
import 'coach_selects_students_page.dart';   // <-- IMPORT HALAMAN TUJUAN

class CoachSelectsTheStudentClassPage extends StatelessWidget {
  const CoachSelectsTheStudentClassPage({super.key});

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
              // ===========================
              // HEADER
              // ===========================
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

              const SizedBox(height: 30),

              _longLine(),

              // ===========================
              // CENTER PANEL
              // ===========================
              Expanded(
                child: Center(
                  child: Container(
                    width: 315,
                    padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
                    decoration: BoxDecoration(
                      color: const Color(0xFFA6A6A6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _shortLine(),
                        const SizedBox(height: 22),

                        // BUTTON 1 (TIDAK NAVIGASI)
                        _pillButton(isClickable: false, context: context),
                        const SizedBox(height: 18),

                        // BUTTON 2 (ADA NAVIGASI)
                        _pillButton(isClickable: true, context: context),
                        const SizedBox(height: 18),

                        // BUTTON 3 (TIDAK NAVIGASI)
                        _pillButton(isClickable: false, context: context),
                        const SizedBox(height: 28),

                        // ===============================
                        // CIRCLES LEFT & RIGHT
                        // ===============================
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _circleWhite(), // kiri
                            _circleWhite(), // kanan
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // ===========================
              // FOOTER
              // ===========================
              Container(
                height: 55,
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

  // ===============================
  // REUSABLE WIDGETS
  // ===============================

  Widget _circleX() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: 42,
        height: 42,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: const Center(
          child: Text(
            "✕",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }

  Widget _circleWhite() {
    return Container(
      width: 34,
      height: 34,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _longLine() {
    return Container(
      width: 130,
      height: 2,
      color: Colors.black,
    );
  }

  Widget _shortLine() {
    return Container(
      width: 100,
      height: 2,
      color: Colors.black,
    );
  }

  // ======================================================
  // PILL BUTTON DENGAN OPTIONAL NAVIGASI
  // ======================================================
  Widget _pillButton({required bool isClickable, required BuildContext context}) {
    final button = Container(
      width: 210,
      height: 38,
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(30),
      ),
      alignment: Alignment.center,
      child: Container(
        width: 90,
        height: 2,
        color: Colors.black,
      ),
    );

    // Jika tombol tidak clickable → return biasa
    if (!isClickable) return button;

    // Jika clickable → bungkus pakai GestureDetector
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const CoachSelectsStudentsPage(),
          ),
        );
      },
      child: button,
    );
  }
}
