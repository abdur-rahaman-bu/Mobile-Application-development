import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  var count = 10;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Count: ${count}"),
        ElevatedButton(
          onPressed: () {
            setState(() {
              count = count + 1;
            });
            print("Button Pressed and count is ${count}");
          },
          child: const Text("Increment"),
        ),
      ],
    );
  }
}
