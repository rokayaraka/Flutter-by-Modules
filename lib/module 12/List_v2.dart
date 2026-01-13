import 'package:flutter/material.dart';

class ListV2 extends StatelessWidget {
  const ListV2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Responsive widget")),
      body: Column(
        children: [
          Text("Hello test 1", style: TextStyle(color: Colors.red)),
          SizedBox(height: 20),
          Container(height: 20, width: 10,color: Colors.amberAccent,),
          SizedBox(
            height: 240,
            child: Container(
              color: Colors.green,
              child: ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    child: ListTile(
                      leading: Icon(Icons.phone),
                      trailing: Icon(Icons.delete, color: Colors.red),
                      title: Text(
                        "Rokaya",
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      ),
                      subtitle: Text("017171231852"),
                    ),
                  );
                },
              ),
            ),
          ),
          Divider(height: 20, thickness: 20, color: Colors.yellow),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    child: ListTile(
                      leading: Icon(Icons.phone),
                      trailing: Icon(Icons.delete, color: Colors.red),
                      title: Text(
                        "Raka",
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      ),
                      subtitle: Text("017171231852"),
                    ),
                  );
                },
              ),
            ),
          ),
          //Container(height: 200, width: 100,color: Colors.amber),
          Divider(height: 20, thickness: 20, color: Colors.yellow),
          Flexible(
            child: Container(
              color: const Color.fromARGB(255, 127, 23, 161),
              child: ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    child: ListTile(
                      leading: Icon(Icons.phone),
                      trailing: Icon(Icons.delete, color: Colors.red),
                      title: Text(
                        "Sultana",
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      ),
                      subtitle: Text("017171231852"),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
