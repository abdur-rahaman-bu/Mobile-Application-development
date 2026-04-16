import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecondaryNumbersUI(),
    );
  }
}

class SecondaryNumbersUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(240, 8, 19, 23),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Secondary Numbers",
                style: TextStyle(
                  color: const Color.fromARGB(192, 220, 215, 240),
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),

              // First Card
              contactCard(
                number: "+1 (555) 987-6543",
                subtitle: "Home • Added 2mo ago",
              ),

              SizedBox(height: 20),

              // Second Card
              contactCard(
                number: "+44 20 7123 4567",
                subtitle: "Work • Unverified",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget contactCard({required String number, required String subtitle}) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFF1C2B2F),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(244, 250, 250, 250),
            blurRadius: 3,
            spreadRadius: 1,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Icon Circle
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white10,
            ),
            child: Icon(Icons.call, color: Colors.white70),
          ),

          SizedBox(width: 16),

          // Text Section
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  number,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(height: 6),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.white54, fontSize: 14),
                ),
              ],
            ),
          ),

          // Edit Icon
          Icon(Icons.edit, color: Colors.white54),
          SizedBox(width: 10),

          // Delete Icon
          Icon(Icons.delete, color: Colors.white54),
        ],
      ),
    );
  }
}
