import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is appbar", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: [
            Text(
              "This is body",
              style: TextStyle(
                color: Colors.green,
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
            // Text(
            //   "This is body",
            //   style: TextStyle(
            //     color: Colors.green,
            //     fontSize: 30,
            //     fontWeight: FontWeight.w900,
            //   ),
            // ),
            
            // Text(
            //   "This is body",
            //   style: TextStyle(
            //     color: Colors.green,
            //     fontSize: 30,
            //     fontWeight: FontWeight.w900,
            //   ),
            // ),
            // Text(
            //   "This is body",
            //   style: TextStyle(
            //     color: Colors.green,
            //     fontSize: 30,
            //     fontWeight: FontWeight.w900,
            //   ),
            // ),
         
          ],
        ),

        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [
        //       Text(
        //     "This is body",
        //     style: TextStyle(
        //       color: Colors.green,
        //       fontSize: 30,
        //       fontWeight: FontWeight.w900,
        //     ),
        //   ),
        //   Text(
        //     "This is body",
        //     style: TextStyle(
        //       color: Colors.black,
        //       fontSize: 30,
        //       fontWeight: FontWeight.w900,
        //     ),
        //   ),
        //   Text(
        //   "This is body",
        //   style: TextStyle(
        //     color: Colors.green,
        //     fontSize: 30,
        //     fontWeight: FontWeight.w900,
        //   ),
        // ),
        // Text(
        //   "This is body",
        //   style: TextStyle(
        //     color: Colors.green,
        //     fontSize: 30,
        //     fontWeight: FontWeight.w900,
        //   ),
        // ),
        // Text(
        //   "This is body",
        //   style: TextStyle(
        //     color: Colors.green,
        //     fontSize: 30,
        //     fontWeight: FontWeight.w900,
        //   ),
        // ),
        //     ],
        //   ),
      ),
    );
  }
}
