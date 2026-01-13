import 'package:flutter/material.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              
              children: [
                Container(
                  height: 842,
                  width: 500,
                  color: Colors.black,
                  child: Column(
                    
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Log In",
                        style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Please sign in to your existing account",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      SizedBox(height: 90,),
                      Positioned(
                       // left: 10,
                       // bottom: 100,
                        //right: 10,
                        top: 300,
                        child: Container(height: 650,
                        width: double.infinity,
                         color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
