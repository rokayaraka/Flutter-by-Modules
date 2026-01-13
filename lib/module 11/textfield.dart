import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  const Textfield({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "Enter your phn no.",
                  helperText: "phone no.",
                  labelText: "Phone number",
                  labelStyle: TextStyle(fontSize: 18),
                  prefixIcon: Icon(Icons.phone),
                  suffixIcon: Icon(Icons.check),
                ),
              ),
              SizedBox(height: 20),
              TextField(),
              SizedBox(height: 20),
              TextField(
                controller: passController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter password",
                  hintStyle: TextStyle(fontSize: 15),
                  labelText: "Password",
                  labelStyle: TextStyle(fontSize: 18),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 40,
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    if (phoneController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Plz enter phone number")),
                      );
                    } else if (phoneController.text.length != 11) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Enter correct phn no.")),
                      );
                    } else {
                      phoneController.clear();
                    }
                  },
                  child: Text("Submit"),
                ),
              ),

              SizedBox(height: 20),
              Container(
                height: 60,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 2),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      offset: Offset(4, 10),
                    ),
                    BoxShadow(color: Colors.blue, offset: Offset(-10, -10)),
                  ],
                ),
                child: Text("container text", style: TextStyle(fontSize: 15)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
