import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileAnimation extends StatefulWidget {
  const ProfileAnimation({super.key});

  @override
  State<ProfileAnimation> createState() => _ProfileAnimationState();
}

class _ProfileAnimationState extends State<ProfileAnimation> {
  double _turns = 0;

  @override
  void initState() {
    
    super.initState();
   Future.delayed(Duration(seconds: 1),(){
     setState(() {
      _turns-=1;
    });
   });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.withOpacity(0.5),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
            Positioned(
            top: -960.w,
           
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT32aLcxWLUMzXEWKeRrH2g9UEV8AZDEH3nfQ&s",
                ),
                radius: 960.w,
                
              ),
            
          ),
          Positioned(
            top: -960.w,
            child:  AnimatedRotation(
              turns: _turns,
              duration: Duration(seconds: 4),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 960.w,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      bottom: -250.w,
                      left: 960.w-(300.w),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _turns+=1;
                          });
                          print("object");
                        },
                        child: CircleAvatar(
                          radius: 300.w,
                          child: ClipOval(
                            child: Image.network(
                              "https://i.pinimg.com/736x/0e/2a/62/0e2a6215c3769644ae6d8404c4a903fa.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ),
        
        ],
      ),
    );
  }
}
