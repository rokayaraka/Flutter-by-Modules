import 'package:flutter/material.dart';

class Module13Class1 extends StatelessWidget {
  const Module13Class1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Customize widget",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 123, 99, 190),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
              alignment: AlignmentGeometry.center,
            children: [
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ19gCUk9-brHO5yhtwjzw_kKg_-4AT9S59AA&s",
               height: 300,
               width: 700,
              fit: BoxFit.cover,
              ),
              Container(
                height: 300,
                width: 700,
                color: Colors.white24,
              ),
            ],
          ),
        ],
      ),
    );
  }
}