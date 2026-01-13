import 'package:course_flutter_codes/module%2010/home.dart';
import 'package:flutter/material.dart';

class PracticeTextFormField extends StatelessWidget {
  const PracticeTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final _formkey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("LOGIN", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Image.network(
                  "https://tinypng.com/images/social/website.jpg",
                  height: 100,
                  width: 2000,
                ),

                Image.asset("asset/4.jpg", height: 200, width: 200),

                Text(
                  "Login with phone and password",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    hintText: "phone number",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Plz enter a phn number.";
                    } else if (value.length != 11) {
                      return "enter correct number";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "paswword",

                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Plz enter a password.";
                    } else if (value.length <= 8) {
                      return "enter correct password";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Login successful!")),
                        );
                        //Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      }
                    },
                    child: Text("Login"),
                  ),
                ),
                  SizedBox(height: 10,),
                Stack(
                  children: [
                    CircleAvatar(radius: 85, backgroundColor: const Color.fromARGB(255, 127, 191, 244)),
                    Positioned(
                      left: 5,
                      top: 5,
                      child: CircleAvatar(
                        radius: 80,
                      
                        backgroundImage: NetworkImage(
                          "https://img.freepik.com/premium-photo/woman-photographing-while-standing-land_1048944-2692480.jpg?semt=ais_hybrid&w=740&q=80",
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 17,

                      right: 12,
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
