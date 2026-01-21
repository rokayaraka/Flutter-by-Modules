import 'package:course_flutter_codes/ResponsiveDesign/desktopBody_layout.dart';
import 'package:course_flutter_codes/ResponsiveDesign/mobileBody_layout.dart';
import 'package:course_flutter_codes/ResponsiveDesign/resposive_layouts.dart';
import 'package:flutter/material.dart';

class ResponsiveDesign extends StatefulWidget {
  const ResponsiveDesign({super.key});

  @override
  State<ResponsiveDesign> createState() => _ResponsiveDesignState();
}

class _ResponsiveDesignState extends State<ResponsiveDesign> {
  @override
  Widget build(BuildContext context) {
    // final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: currentWidth<600?Colors.purple:Colors.amber,
      // body: Center(
      //   child: Text(currentWidth.toString()),
      // ),
      body: ResposiveLayoutsPage(
        mobileBody: MobileBodyLayout(),
        desktopBody: DesktopBodyLayout(),
      ),
    );
  }
}
