import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Taskoneagain extends StatelessWidget {
  const Taskoneagain({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    final size = MediaQuery.of(context).size;
    print(size);
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            color: const Color(0xff121223),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 80),
                Text(
                  "Log In",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                Text(
                  "Please sign in to your existing account",
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 18),
                ),
              ],
            ),
          ),
          //Text("data"),
          Positioned(
            // top: 300,
            bottom: 0,
            child: Container(
              height: size.height - (size.height * .28),
              width: size.width,

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [Text("Email", style: TextStyle(fontSize: 20))],
                    ),
                    TextFormField(
                      controller: emailController,
                      //textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        fillColor: const Color.fromARGB(255, 210, 216, 216),
                        filled: true,
                        hintText: "example@gmail.com",
                         border:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                         borderSide: BorderSide.none,
                        ) ,
                        enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: BorderSide.none,
                        ),
                        enabled: true,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text("Password", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    TextFormField(
                      controller: passController,
                      obscureText: true,
                      //textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        border:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                         borderSide: BorderSide.none,
                        ) ,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                         borderSide: BorderSide.none,
                        ),
                        enabled: true,
                        fillColor: const Color.fromARGB(255, 210, 216, 216),
                        filled: true,

                        hintText: "...........",
                        hintStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),

                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.grey.shade500,
                          
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.check_box_outline_blank),
                            SizedBox(width: 2),
                            Text("Remember me", style: TextStyle(fontSize: 16)),
                          ],
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forget Password",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.orange.shade700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 60,
                      width: double.infinity,

                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                            Colors.orange,
                          ),
                          foregroundColor: WidgetStateProperty.all(
                            Colors.white,
                          ),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Log in",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(width: 8),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "SIGH UP",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.orange.shade700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text("Or"),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                       
                        CircleAvatar(
                          backgroundColor: const Color.fromARGB(255, 72, 75, 160),
                          radius: 30,
                          child: Icon(FontAwesomeIcons.facebookF,
                          color: Colors.white,
                          ),
                        ),
                      
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.black,
                         child: Icon(FontAwesomeIcons.xTwitter,
                          color: Colors.white,
                          ),
                        ),
                     
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.black,
                         child: Icon(FontAwesomeIcons.apple,
                          color: Colors.white,
                          ),
                        ),
                      
                      ],
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
