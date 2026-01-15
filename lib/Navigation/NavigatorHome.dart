

import 'dart:developer';

import 'package:flutter/material.dart';

class NavigatorHome extends StatefulWidget {
  const NavigatorHome({super.key});

  @override
  State<NavigatorHome> createState() => _NavigatorHomeState();
}

class _NavigatorHomeState extends State<NavigatorHome> {
  List<GroceryItem> items = [];
double angle = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grocery"),
        actions: [
          IconButton(
            onPressed: () async {
              // final item = await Navigator.of(
              //   context,
              // ).push<GroceryItem>(MaterialPageRoute(builder: (context) => NewItem()));
              final item = await Navigator.of(context).pushNamed("/addNewItem")as GroceryItem?;
              log(item.toString());
              if(item == null) return ;
              items.add(item);
              setState(() {
                
              });
              
            },
            icon: Icon(Icons.add),
          ),
        ],
        elevation: 10,
      ),
      // body: items.isEmpty
      //     ? Center(child: Text(" no data"))
      //     : ListView.builder(
      //       itemCount: items.length,
      //         itemBuilder: (context, index) {
      //           final value = items[index];
      //           return ListTile(
      //             title: Text(value.name),
      //             subtitle: Text(value.price.toStringAsFixed(2)),
      //             trailing: Text(value.quantity),
      //             leading: Text(value.id),
      //           );
      //         },
      //       ),

      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(width: 500,height: 900,color: Colors.red,),
          Positioned(
            left: 100,
            top: -90,
            child: AnimatedRotation(
              duration: Duration(seconds: 4),
              turns: angle,
              child: CircleAvatar(
                radius: 180,
                backgroundColor: Colors.blueAccent,
                child: Stack(
                   clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      bottom: -20,
                    left: 50,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            angle-=1;
                          });
                        },
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.amberAccent,
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

class GroceryItem {
  String name;
  String id;
  double price;
  String quantity;

  GroceryItem({
    required this.name,
    required this.id,
    required this.price,
    required this.quantity,
  });

  @override
  String toString() {
   
    return "${this.name} ${this.id} ${this.price} ${this.quantity}";
  }
}
