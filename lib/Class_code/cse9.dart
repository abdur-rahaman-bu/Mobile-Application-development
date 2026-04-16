import 'package:flutter/material.dart';

import 'student.dart';

class BUCSE9 extends StatelessWidget {
  const BUCSE9({super.key});

  @override
  Widget build(BuildContext context) {
    void deleteStudent(String roll) {}
    List<Map<String, dynamic>> students = [
      {
        'name': 'Palak',
        'roll': '22CSE041',
        'reg': '110-001-22',
        'bloodGroup': 'A+',
        'isPresent': true,
      },
      {
        'name': 'Biswhaw Dev',
        'roll': '22CSE026',
        'reg': '110-026-23',
        'bloodGroup': 'B+',
        'isPresent': false,
      },
      {
        'name': 'Kainsha',
        'roll': '22CSE033',
        'reg': '110-033-22',
        'bloodGroup': 'O+',
        'isPresent': true,
      },

      {
        'name': 'Rahat',
        'roll': '22CSE031',
        'reg': '110-031-22',
        'bloodGroup': 'O+',
        'isPresent': true,
      },
      {
        'name': 'Rahat',
        'roll': '22CSE031',
        'reg': '110-031-22',
        'bloodGroup': 'O+',
        'isPresent': false,
      },

      {
        'name': 'Shohan',
        'roll': '22CSE023',
        'reg': '110-023-22',
        'bloodGroup': 'O+',
        'isPresent': true,
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("4th April 2026"),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,

        leading: Icon(Icons.arrow_back),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Total Students: ${students.length}"),
              for (var student in students) ...[
                Student(
                  name: student['name']!,
                  roll: student['roll']!,
                  reg: student['reg']!,
                  bloodGroup: student['bloodGroup']!,
                  isPresent: student['isPresent']!,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
