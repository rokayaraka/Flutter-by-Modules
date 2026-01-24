import 'package:flutter/material.dart';

class BuildList extends StatelessWidget {
final List<Map<String,dynamic>>items;
 final bool inEarning;

  const BuildList({super.key, required this.items, required this.inEarning});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(Icons.arrow_upward,color: Colors.white,),
            ),
            title: Text(items[index]["title"]),
            subtitle: Text(items[index]["date"]),
            trailing: Text(items[index]["amount"],
             style: TextStyle(color: Colors.green,
             fontSize: 20,
             fontWeight: FontWeight.bold,
             ),
            ),
          ),
        );
      },
    );
  }
}
