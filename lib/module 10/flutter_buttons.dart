import 'package:flutter/material.dart';

class FlutterButtons extends StatelessWidget {
  const FlutterButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey.shade300,
      //backgroundColor: Colors.grey.withOpacity(0.30),
      backgroundColor: Colors.grey[300],

      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Flutter button", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                // style: ButtonStyle(
                //   foregroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
                //   overlayColor: MaterialStateProperty.resolveWith(
                //     (Set<MaterialState>States){
                //       if(States.contains(MaterialState.hovered))
                //       return Colors.blue.withOpacity(0.54);
                //       if(States.contains(MaterialState.focused) ||
                //       States.contains(MaterialState.pressed))
                //       return Colors.blue.withOpacity(0.12);
                //       return null;


                //     },
                //   ),
                // ),
               
               style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 205, 243, 33),
                disabledForegroundColor: Colors.red,
               ),
                onPressed: () {
                  print("one click");
                },
                onLongPress: (){
                  print("long press");
                }, 
                child: Text(
                  "Click here",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 28, 104, 67),
                  ),
                
                ),),
          
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  
                  print("click");
                },
                child: Text("Login",),
              ),
              //Spacer(),
               SizedBox(
                height: 50,
                width: double.infinity,
                 child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 239, 153, 181),
                    foregroundColor: const Color.fromARGB(255, 17, 17, 17),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    
                    print("click");
                  },
                  child: Text("Login"),
                               ),
               ),
            
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.green,
                backgroundColor: const Color.fromARGB(255, 225, 193, 204),
              ),
              onPressed: (){}, 
              child: Text("submit")),
            
            Icon(Icons.phone,)
            ],
          ),
        ),
      ),
    );
  }
}
