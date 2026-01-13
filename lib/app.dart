//import 'package:course_flutter_codes/module%2010/flutter_buttons.dart';
//import 'package:course_flutter_codes/module%2010/home.dart';
//import 'package:course_flutter_codes/module%2011/class2.dart';
import 'package:course_flutter_codes/module%2014/class1.dart';
//import 'package:course_flutter_codes/task%20sh/Task1.dart';
//import 'package:course_flutter_codes/task%20sh/TaskOneAgain.dart';
//import 'package:course_flutter_codes/module%2011/textfield.dart';
//import 'package:course_flutter_codes/module%2012/List_v2.dart';
//import 'package:course_flutter_codes/module%2012/ViewLists.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter",
      //home: Home(),
      //home: FlutterButtons(),
      //home: ViewingLists(),
      // home: ListV2(),
      //home: Textfield(),
      //home: PracticeTextFormField(),
      // home: Task1(),
      //home: Taskoneagain(),
      home: Module14Class1(),
    );
  }
}
