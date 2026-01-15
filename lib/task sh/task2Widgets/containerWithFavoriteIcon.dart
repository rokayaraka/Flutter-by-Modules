import 'package:flutter/material.dart';

class Containerwithfavoriteicon extends StatelessWidget {
  const Containerwithfavoriteicon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.blueGrey.shade400,
            borderRadius: BorderRadius.circular(20),
          ),

          height: 190,
          width: double.infinity,
        ),

        Positioned(
          bottom: 10,
          right: 20,
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              shape: CircleBorder(),
              backgroundColor: Colors.white30,
            ),
            child: Icon(Icons.favorite_border, size: 27, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
