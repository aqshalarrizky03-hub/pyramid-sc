import 'package:flutter/material.dart';

class CoachLoginPage extends StatelessWidget {
  const CoachLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: FittedBox(
          child: Container(
            width: 375,
            height: 812,
            color: const Color(0xFFE0E0E0),
            child: Stack(
              children: [
                // TOP PANEL
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
                        _circleX(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _line(),
                            const SizedBox(height: 5),
                            _line(),
                          ],
                        ),
                        _circleX(),
                      ],
                    ),
                  ),
                ),

                // LOGIN BOX
                Positioned(
                  top: 220,
                  left: 35,
                  right: 35,
                  child: Container(
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.grey[500],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _line(),
                        _roundedInput(),
                        _line(),
                        _roundedInput(),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(width: 30, height: 30, color: Colors.white),
                            const SizedBox(width: 20),
                            Container(
                              width: 140,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              alignment: Alignment.center,
                              child: _lineSmall(),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                // BOTTOM PANEL
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

  Widget _circleX() => Container(
        width: 40,
        height: 40,
        decoration: const BoxDecoration(
            color: Colors.white, shape: BoxShape.circle),
        child: const Center(child: Text("✕", style: TextStyle(fontSize: 18))),
      );

  Widget _line() =>
      Container(width: 150, height: 2, color: Colors.black);

  Widget _lineSmall() =>
      Container(width: 90, height: 2, color: Colors.black);

  Widget _roundedInput() {
    return Container(
      height: 40,
      width: 260,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.center,
      child: _lineSmall(),
    );
  }
}
