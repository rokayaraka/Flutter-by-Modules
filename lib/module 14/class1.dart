import 'package:flutter/material.dart';

class Module14Class1 extends StatefulWidget {
  const Module14Class1({super.key});

  @override
  State<Module14Class1> createState() => _LifeCycleState();
}

class _LifeCycleState extends State<Module14Class1> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(number.toString(), style: TextStyle(fontSize: 70)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                  number++;
                  print(number);
                },
                child: Text("+", style: TextStyle(fontSize: 40)),
              ),

              ElevatedButton(
                onPressed: () {
                  setState(() {});
                  number--;
                  print(number);
                },
                child: Text("-", style: TextStyle(fontSize: 40)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
