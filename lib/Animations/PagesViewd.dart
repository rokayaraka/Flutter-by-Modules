import 'package:course_flutter_codes/Animations/introPages/intro_page1.dart';
import 'package:course_flutter_codes/Animations/introPages/intro_page2.dart';
import 'package:course_flutter_codes/Animations/introPages/intro_page3.dart';
import 'package:course_flutter_codes/task%20sh/TaskOneAgain.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PagesViewd extends StatefulWidget {
  const PagesViewd({super.key});

  @override
  State<PagesViewd> createState() => _PagesViewdState();
}

class _PagesViewdState extends State<PagesViewd> {
  PageController _controller = PageController();

  //keep tarck we are in the last page or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (value) {
              setState(() {
                onLastPage = (value == 2);
              });
            },
            children: [IntroPage1(), IntroPage2(), IntroPage3()],
          ),

          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //skip
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },

                  child: Text("Skip"),
                ),

                SmoothPageIndicator(controller: _controller, count: 3),

                //next
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Taskoneagain(),
                            ),
                          );
                        },
                        child: Text("Done!"),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: Duration(microseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: Text("Next"),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
