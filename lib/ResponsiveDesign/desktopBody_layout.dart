import 'package:flutter/material.dart';

class DesktopBodyLayout extends StatelessWidget {
  const DesktopBodyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        title: Text(
          "D E S K T O P",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                //youtube video
                Padding(
                  padding: EdgeInsetsGeometry.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      height: 250,
                      color: Colors.deepPurple[400],
                    ),
                  ),
                ),
                //comment section
                Expanded(
                  child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 120,
                          color: Colors.deepPurple[300],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(width: 200, color: Colors.deepPurple[300]),
        ],
      ),
    );
  }
}
