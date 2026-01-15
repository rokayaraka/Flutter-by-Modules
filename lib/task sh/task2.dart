import 'package:course_flutter_codes/task%20sh/task2Widgets/Ingredients.dart';
import 'package:course_flutter_codes/task%20sh/task2Widgets/containerWithFavoriteIcon.dart';
import 'package:flutter/material.dart';

class TaskTwo extends StatelessWidget {
  const TaskTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade400,
        body: Card(
          margin: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(height: 90),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey.shade300,
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(10),
                    ),
                    child: Icon(Icons.arrow_back_ios_sharp),
                  ),

                  Text("Details", style: TextStyle(fontSize: 20)),
                ],
              ),

              Containerwithfavoriteicon(),

              SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.only(right: 190, left: 20),
                child: TextButton(
                  style: TextButton.styleFrom(
                    //backgroundColor: Colors.amber
                    side: BorderSide(width: 1, color: Colors.grey.shade400),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.home),
                      SizedBox(width: 10),
                      Text("Uttara Cafe House"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Pizza Calzone European",
                  //textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  "Proscuitto e funghi is a pizza variety that is topped with tomato sauce.",
                  //textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 15, color: Colors.blueGrey),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star_border_outlined, color: Colors.orange),
                        SizedBox(width: 5),
                        Text(
                          "4.7",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 60),
                    Row(
                      children: [
                        Icon(Icons.car_crash_outlined, color: Colors.orange),
                        SizedBox(width: 5),
                        Text("Free", style: TextStyle(fontSize: 15)),
                      ],
                    ),
                    SizedBox(width: 60),
                    Row(
                      children: [
                        Icon(Icons.lock_clock, color: Colors.orange),
                        SizedBox(width: 5),
                        Text("min", style: TextStyle(fontSize: 15)),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text("SIZE:", style: TextStyle(fontSize: 15)),
                    SizedBox(width: 10),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "10''",
                        style: TextStyle(color: Colors.black),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.grey.shade300,
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(15),
                      ),
                    ),
                    SizedBox(width: 20),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "14''",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(15),
                      ),
                    ),
                    SizedBox(width: 20),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "16''",
                        style: TextStyle(color: Colors.black),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.grey.shade300,
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(15),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "INGREDIENTS",
                  //textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Ingredients(),
              SizedBox(height: 5),
              
            ],
          ),
        ),
      ),
    );
  }
}
