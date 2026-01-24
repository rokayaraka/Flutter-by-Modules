import 'package:flutter/material.dart';

class Buildsummerycard extends StatelessWidget {
  final String title, amount;
  final Color cardColor;
  const Buildsummerycard({
    super.key,
    required this.title,
    required this.amount,
    required this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: cardColor,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(title, style: TextStyle(fontSize: 16)),
              Text(
                amount,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
