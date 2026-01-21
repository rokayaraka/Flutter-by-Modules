import 'package:flutter/material.dart';

class MobileBodyLayout extends StatelessWidget {
  const MobileBodyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        title: Text(
          "M O B I L E",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          //youtube video
          Padding(
            padding: EdgeInsetsGeometry.all(8.0),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(height: 250, color: Colors.deepPurple[400]),
            ),
          ),
          //comment section
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 120, color: Colors.deepPurple[300]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
