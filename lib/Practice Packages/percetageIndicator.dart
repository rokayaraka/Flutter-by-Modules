import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/flutter_percent_indicator.dart';

class PercetageINdicator extends StatefulWidget {
  const PercetageINdicator({super.key});

  @override
  State<PercetageINdicator> createState() => _PercetageINdicatorState();
}

class _PercetageINdicatorState extends State<PercetageINdicator> {
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
                radius: 200,
                lineWidth: 20,
                percent: 0.9,
                progressColor: Colors.purple,
                backgroundColor: Colors.purple.shade100,
                circularStrokeCap: CircularStrokeCap.round,
                center: Text("90%",
                style: TextStyle(
                  fontSize: 50,
                ),
                ),
              
              ),
          
              LinearPercentIndicator(
                animation: true,
                animationDuration: 4000,
                lineHeight: 15,
                percent: 0.6,
                progressColor: Colors.purple,
                backgroundColor: Colors.purple.shade100,
                
                
              ),
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