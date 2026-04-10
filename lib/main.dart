import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        centerTitle: true,
        title: Text("10th April 2026", style: TextStyle(color: Colors.black)),
      ),

      body: Stack(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 80,
                      color: Colors.red,
                      child: Center(child: Text("22-CSE-034")),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 80,
                      color: Colors.green,
                      child: Center(child: Text("A+")),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 80,
                      color: Colors.blue,
                      child: Center(child: Text("Barishal")),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 150),

              Center(
                child: Container(
                  width: 250,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: Center(child: Text("2110-020-22")),
                ),
              ),
            ],
          ),

          Positioned(
            bottom: 30,
            right: 30,
            child: FloatingActionButton.extended(
              backgroundColor: Colors.purple,
              onPressed: () {},
              label: Text("Abdur Rahaman"),
              icon: Icon(Icons.person),
            ),
          ),
        ],
      ),
    );
  }
}
