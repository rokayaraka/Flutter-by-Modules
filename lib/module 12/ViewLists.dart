import 'package:flutter/material.dart';

class ViewingLists extends StatelessWidget {
  const ViewingLists({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),

      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context,index){
          return Card(
            elevation: 3,
            child: ListTile(
              leading: Icon(Icons.phone),
              trailing: Icon(Icons.delete,color: Colors.red,),
              title: Text("Rokaya",style: TextStyle(color: Colors.blue,fontSize: 20,),),
              subtitle: Text("017171231852"),
            
            ),
          );
      }),
    );
  }
}