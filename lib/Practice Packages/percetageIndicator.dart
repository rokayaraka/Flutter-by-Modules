import 'dart:async';

import 'package:flutter/material.dart';
import 'package:percent_indicator/flutter_percent_indicator.dart';

class PercetageINdicator extends StatefulWidget {
  const PercetageINdicator({super.key});

  @override
  State<PercetageINdicator> createState() => _PercetageINdicatorState();
}

class _PercetageINdicatorState extends State<PercetageINdicator> {
final int _duration = 6000;
late final _increament = (_duration/100).toInt();
Timer? timer ;
int _percent = 0;

void percentIncreament(){
  timer= Timer.periodic(Duration(milliseconds: _increament), (timer){
    if(_percent <100)
    {
      setState(() {
        _percent++;
      });
    }
    else {
      timer.cancel();
    }
  });
}

@override
  void initState() {
   
    super.initState();
    percentIncreament();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircularPercentIndicator(
                animation: true,
                animationDuration: _duration,
                radius: 200,
                lineWidth: 20,
                percent: 1,
                progressColor: Colors.purple,
                backgroundColor: Colors.purple.shade100,
                circularStrokeCap: CircularStrokeCap.round,
                center: Text("$_percent%",
                style: TextStyle(
                  fontSize: 50,
                ),
                ),
              
              ),
          
              LinearPercentIndicator(
                linearStrokeCap: LinearStrokeCap.round,
                animation: true,
                animationDuration: _duration,
                lineHeight: 15,
                percent: 1,
                progressColor: Colors.purple,
                backgroundColor: Colors.purple.shade100,
                
                
                
              ),
              Text("$_percent%"),
              Text("Percentage Indicator",style: TextStyle(
                fontSize: 20,
              ),),
            ],
          ),
        ),
      ),
    );
  }
}