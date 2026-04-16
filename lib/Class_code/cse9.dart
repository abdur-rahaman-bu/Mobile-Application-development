import 'package:flutter/material.dart';
import 'student.dart';

class BUCSE9 extends StatelessWidget {
  const BUCSE9({super.key});

  final List<Map<String, dynamic>> students = const [
    {
      'name': 'Palak',
      'roll': '22CSE041',
      'reg': '110-001-22',
      'bloodGroup': 'A+',
    },
    {
      'name': 'Biswhaw Dev',
      'roll': '22CSE026',
      'reg': '110-026-23',
      'bloodGroup': 'B+',
    },
    {
      'name': 'Kainsha',
      'roll': '22CSE033',
      'reg': '110-033-22',
      'bloodGroup': 'O+',
    },
    {
      'name': 'Rahat',
      'roll': '22CSE031',
      'reg': '110-031-22',
      'bloodGroup': 'O+',
    },
    {
      'name': 'Shohan',
      'roll': '22CSE023',
      'reg': '110-023-22',
      'bloodGroup': 'O+',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("4th April 2026"),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
      ),

      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),

            Text("Total Students: ${students.length}"),

            Expanded(
              child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) {
                  final student = students[index];

                  return Student(
                    name: student['name'],
                    roll: student['roll'],
                    reg: student['reg'],
                    bloodGroup: student['bloodGroup'],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
