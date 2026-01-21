import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Module15Class2 extends StatefulWidget {
  const Module15Class2({super.key});

  @override
  State<Module15Class2> createState() => _Module15Class2State();
}

class _Module15Class2State extends State<Module15Class2> {

  // @override
  // void initState() {
  //   // forcefully landscape:
  //   super.initState();
  //   SystemChrome.setPreferredOrientations([
  //     DeviceOrientation.landscapeLeft,
  //     DeviceOrientation.landscapeRight,
  //   ]);
  // }
  @override
  void initState() {
    // forcefully potraite:
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;

    final Orientation orientation = MediaQuery.of(context).orientation;
      return Scaffold(
      appBar: AppBar(
        title: Text("Screen Size",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.blue.shade300,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          orientation==Orientation.portrait? Text("This is in potraite Mode",
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
          ),
          ):Text("This is in Landscape Mode",
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
          ),
          ),
          SizedBox(height: 20,),
          Center(
            child: orientation==Orientation.portrait?
             Column(
              children: [
                Container(
                  height: 150,
                  width: 300,
                  color: Colors.deepOrange,
                
                ),
                Text("This is the basic container"),
                SizedBox(height: 30,),
                 Container(
                  height: screenHeight*0.2,
                  width: screenWidth*0.8,
                  color: Colors.purple,
                
                ),
                 Text("This is a Responsive Container\n where screen Size used."),
              ],
            )
          : Row(
             children: [
                Container(
                  height: 150,
                  width: 300,
                  color: Colors.deepOrange,
                
                ),
                Text("This is the basic container"),
                SizedBox(height: 30,),
                 Container(
                  height: screenHeight*0.12,
                  width: screenWidth*0.8,
                  color: Colors.purple,
                
                ),
                 Text("This is a Responsive Container\n where screen Size used."),
              ],
          ),
          ),
        ],
      ),
    );
  }
}