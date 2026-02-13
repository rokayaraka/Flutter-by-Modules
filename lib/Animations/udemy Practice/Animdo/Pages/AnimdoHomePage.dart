import 'dart:math';

import 'package:flutter/material.dart';

class AnimdoHomePage extends StatefulWidget {
  const AnimdoHomePage({super.key});

  @override
  State<AnimdoHomePage> createState() => _AnimdoHomePageState();
}

class _AnimdoHomePageState extends State<AnimdoHomePage> with SingleTickerProviderStateMixin{

  double _buttonRadius=100;

  final Tween<double> _backgroundScale = Tween<double>(begin: 0.0,end: 1.0);

  AnimationController? _startAnimationController;

  @override
  void initState() {
   
    super.initState();
    _startAnimationController=AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
      );

      _startAnimationController!.repeat();
  }
  @override
  //Animated
  //Animated Container
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          _pageBackgroud(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _circularAnimationButton(),
              _starIcon(),
      
            ],
          ),
         
           ],
      ),
    );
  }

  Widget _pageBackgroud() {
    return TweenAnimationBuilder(
      tween: _backgroundScale, 
      curve: Curves.easeInOutCubicEmphasized,
      duration: Duration(seconds: 1), 
      builder: (context,scale,child){
       return Transform.scale(scale: scale,child: child,);
      },
      child: Container(color: Colors.blue),
      );
  }


  Widget _circularAnimationButton(){
    return Center(
      child: GestureDetector(
        onTap: (){
          setState(() {
            _buttonRadius+=_buttonRadius==200 ? -100:100;
          });
        },
        child: AnimatedContainer(
          duration:const Duration(seconds: 2),
          //curve: Curves.bounceIn,
          height: _buttonRadius,
          width: _buttonRadius,
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(_buttonRadius)
          ),
          child: Center(
            child: Text("Basic!",style: TextStyle(color: Colors.white),)
            ,
          ),
        
        ),
      ),
    );
  }

  Widget _starIcon(){
    return AnimatedBuilder(
      animation: _startAnimationController!.view, 
      builder: (buildContext,child){
        return Transform.rotate(
          angle: _startAnimationController!.value*2*pi,
        child: child,
        );
      },
      child: Icon(Icons.star,
    size: 100,
    color: Colors.white,
    ),);
  }
}
