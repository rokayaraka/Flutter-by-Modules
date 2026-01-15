import 'package:flutter/material.dart';

class Ingredients extends StatelessWidget {
  const Ingredients({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: Colors.red.shade100,
            shape: CircleBorder(),
            padding: EdgeInsets.all(15),
          ),
          child: Icon(Icons.sign_language_outlined, color: Colors.red),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: Colors.red.shade100,
            shape: CircleBorder(),
            padding: EdgeInsets.all(15),
          ),
          child: Icon(Icons.photo_album, color: Colors.red),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: Colors.red.shade100,
            shape: CircleBorder(),
            padding: EdgeInsets.all(15),
          ),
          child: Icon(Icons.linked_camera_outlined, color: Colors.red),
        ),

        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: Colors.red.shade100,
            shape: CircleBorder(),
            padding: EdgeInsets.all(15),
          ),
          child: Icon(Icons.gradient_outlined, color: Colors.red),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: Colors.red.shade100,
            shape: CircleBorder(),
            padding: EdgeInsets.all(15),
          ),
          child: Icon(Icons.sign_language_outlined, color: Colors.red),
        ),
      ],
    );
  }
}
