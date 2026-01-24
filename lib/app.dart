//import 'package:course_flutter_codes/module%2010/flutter_buttons.dart';
//import 'package:course_flutter_codes/module%2010/home.dart';
//import 'package:course_flutter_codes/module%2011/class2.dart';
//import 'package:course_flutter_codes/module%2014/class1.dart';
//import 'package:course_flutter_codes/task%20sh/Task1.dart';
//import 'package:course_flutter_codes/task%20sh/TaskOneAgain.dart';
//import 'package:course_flutter_codes/module%2011/textfield.dart';
//import 'package:course_flutter_codes/module%2012/List_v2.dart';
//import 'package:course_flutter_codes/module%2012/ViewLists.dart';
//import 'package:course_flutter_codes/Animations/PagesViewd.dart';
// import 'package:course_flutter_codes/Animations/usingLottie.dart';
//import 'package:course_flutter_codes/Navigation/NavigatorHome.dart';
// import 'package:course_flutter_codes/Practice%20Packages/percetageIndicator.dart';
// import 'package:course_flutter_codes/Practice%20Packages/profile.dart';
// import 'package:course_flutter_codes/module%2013/class%201.dart';
// import 'package:course_flutter_codes/module%2014/class3.dart';
// import 'package:course_flutter_codes/module15/class1.dart';
//import 'package:course_flutter_codes/module15/class2.dart';
//import 'package:course_flutter_codes/ResponsiveDesign/responsiveHome.dart';
import 'package:course_flutter_codes/mini%20project/class3.dart';
// import 'package:course_flutter_codes/Navigation/newItem.dart';
// import 'package:course_flutter_codes/task%20sh/task2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1920, 1080),
      builder: (context, child) {
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
      //home: Module14Class1(),
      //home: TaskTwo(),
     // home: NavigatorHome(),
      //home: UsingLottie(),
      //home: PagesViewd(),
      //home: Module14Class3(),
      home: MoneyManagement(),


      // initialRoute: "/",
      // routes: {
      //   "/": (context)=>NavigatorHome(),
      //   "/addNewItem":(context)=>NewItem(),
      // },

    );
  
      },
    );
  
  }
}
