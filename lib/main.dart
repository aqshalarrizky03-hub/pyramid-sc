import 'package:flutter/material.dart';
import 'pyramid_oasis_page.dart'; // atau sesuaikan nama file kamu

void main() {
  runApp(const PyramidOasisApp());
}

class PyramidOasisApp extends StatelessWidget {
  const PyramidOasisApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PyramidOasisPage(),
    );
  }
}
