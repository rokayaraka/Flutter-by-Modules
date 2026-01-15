import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class UsingLottie extends StatefulWidget {
  const UsingLottie({super.key});

  @override
  State<UsingLottie> createState() => _UsingLottieState();
}

class _UsingLottieState extends State<UsingLottie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: Center(
       
       child: Lottie.network(  'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json',)
      ),
    );
  }
}