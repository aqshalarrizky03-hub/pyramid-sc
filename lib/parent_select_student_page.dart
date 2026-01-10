import 'package:flutter/material.dart';
import 'parent_student_report_page.dart';

class ParentSelectStudentPage extends StatefulWidget {
  const ParentSelectStudentPage({super.key});

  @override
  State<ParentSelectStudentPage> createState() =>
      _ParentSelectStudentPageState();
}

class _ParentSelectStudentPageState extends State<ParentSelectStudentPage> {
  final Color _darkBlue = const Color(0xFF233055);
  final Color _yellow = const Color(0xFFFDD835);

  final TextEditingController _searchController = TextEditingController();

  final List<String> _allStudents = [
    "Bara",
    "Fatih",
    "Bilal",
    "Arshad",
    "Dawai",
  ];

  List<String> _filteredStudents = [];

  @override
  void initState() {
    super.initState();
    _filteredStudents = _allStudents;
  }

  void _filterStudents(String query) {
    setState(() {
      _filteredStudents = _allStudents
          .where((student) =>
              student.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

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
                  top: 50, left: 16, right: 16, bottom: 20),
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
                      errorBuilder: (_, __, ___) =>
                          const Icon(Icons.pool, size: 40),
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
                  Column(
                    children: [
                      Icon(Icons.waves, color: Colors.red[800], size: 30),
                      Text("Akuatik",
                          style: TextStyle(
                              fontSize: 10,
                              color: _darkBlue,
                              fontWeight: FontWeight.bold)),
                      Text("Indonesia",
                          style:
                              TextStyle(fontSize: 8, color: _darkBlue)),
                    ],
                  )
                ],
              ),
            ),

            // ================= TITLE =================
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
                      child: const Icon(Icons.arrow_back,
                          color: Color(0xFFFDD835)),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Text(
                      "Pilih Murid / Anak Anda",
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

            // ================= SEARCH BAR =================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 45,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: _yellow,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  controller: _searchController,
                  onChanged: _filterStudents,
                  decoration: const InputDecoration(
                    hintText: "Cari nama murid...",
                    border: InputBorder.none,
                    icon: Icon(Icons.search),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 15),

            // ================= LIST MURID =================
            Expanded(
              child: _filteredStudents.isEmpty
                  ? const Center(
                      child: Text(
                        "Murid tidak ditemukan",
                        style: TextStyle(color: Colors.white70),
                      ),
                    )
                  : ListView.builder(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      itemCount: _filteredStudents.length,
                      itemBuilder: (context, index) {
                        return _buildStudentButton(
                            context, _filteredStudents[index]);
                      },
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

  Widget _buildStudentButton(BuildContext context, String name) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: SizedBox(
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: _yellow,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) =>
                    ParentStudentReportPage(studentName: name),
              ),
            );
          },
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              name,
              style: TextStyle(
                color: _darkBlue,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}