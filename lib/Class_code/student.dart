import 'package:flutter/material.dart';

class Student extends StatefulWidget {
  final String name;
  final String roll;
  final String reg;
  final String bloodGroup;

  const Student({
    super.key,
    required this.name,
    required this.roll,
    required this.reg,
    required this.bloodGroup,
  });

  @override
  State<Student> createState() => _StudentState();
}

class _StudentState extends State<Student> {
  bool isPresent = false; // ✅ এখানে রাখো

  @override
  Widget build(BuildContext context) {
    Color textColor = Colors.black;

    return GestureDetector(
      onTap: () {
        setState(() {
          isPresent = !isPresent; // ✅ এখন ঠিক
        });

        print("Student ${widget.name} tapped. Presence: $isPresent");
      },

      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 219, 217, 217),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.name, style: TextStyle(color: textColor)),
                SizedBox(height: 10),
                Text(widget.roll, style: TextStyle(color: textColor)),
                SizedBox(height: 10),
                Text(widget.reg, style: TextStyle(color: textColor)),
              ],
            ),

            Text(widget.bloodGroup, style: TextStyle(color: textColor)),

            Icon(
              isPresent ? Icons.check_circle : Icons.cancel,
              color: isPresent ? Colors.green : Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
