import 'package:flutter/material.dart';

class PyramidOasisPage extends StatefulWidget {
  const PyramidOasisPage({super.key});

  @override
  State<PyramidOasisPage> createState() => _PyramidOasisPageState();
}

class _PyramidOasisPageState extends State<PyramidOasisPage> {
  int selectedDistance = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF5EF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // HEADER SECTION
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              decoration: const BoxDecoration(
                color: Color(0xFF1E3264),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 🔹 LOGO + TITLE (sejajar)
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/pyramid.png',
                        height: 70,
                      ),
                      const SizedBox(width: 12),
                      const Expanded(
                        child: Text(
                          'Pyramid Oasis Swimming Club',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  // 🔹 Text Field
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Nama',
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // 🔹 TITLE & DISTANCE BUTTONS
            const Text(
              'Yuk liat Best Time Terbaik Kalian',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [50, 100, 200].map((distance) {
                bool isSelected = selectedDistance == distance;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedDistance = distance;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          isSelected ? Colors.blue : const Color(0xFF1E3264),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      '$distance M',
                      style: TextStyle(
                        color: isSelected ? Colors.white : Colors.white70, // 🔹 ubah di sini
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),

            const SizedBox(height: 20),

            // 🔹 LIST SWIMMERS
            _buildSwimmerCard(
              name: 'Nizam',
              bebas: '00:28.45',
              punggung: '00:31.12',
              dada: '00:33.54',
              kupu: '00:29.89',
            ),
            _buildSwimmerCard(
              name: 'Gofis',
              bebas: '00:29.30',
              punggung: '00:32.01',
              dada: '00:35.24',
              kupu: '00:30.10',
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildSwimmerCard({
    required String name,
    required String bebas,
    required String punggung,
    required String dada,
    required String kupu,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/pyramid.png',
              height: 70,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style:
                          const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text('Best Time Gaya Bebas: $bebas'),
                  Text('Best Time Gaya Punggung: $punggung'),
                  Text('Best Time Gaya Dada: $dada'),
                  Text('Best Time Gaya Kupu: $kupu'),
                ],
              ),
            ),
            const Text(
              'Selengkapnya',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}