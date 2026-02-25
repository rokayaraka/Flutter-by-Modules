import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class ApiCallClass extends StatefulWidget {
  const ApiCallClass({super.key});

  @override
  State<ApiCallClass> createState() => _ApiCallClassState();
}

class _ApiCallClassState extends State<ApiCallClass> {
 

  List products=[];
  Future<void>getProducts()async{
    final url= Uri.parse('https://api.aladhan.com/v1/islamicCalendar/methods');
    final response =await http.get(url);

    if(response.statusCode==200){
      final jsonResponse = jsonDecode(response.body);
      print(response.body);
      setState(() {
        products=jsonResponse['data'];
      });
    }
  }
 @override
  void initState() {
    super.initState();
    getProducts();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product"),),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          childAspectRatio: 1,
          ), 
        itemCount: products.length,
        itemBuilder: (context,index){
          final item = products[index];
          return Container(
            child: Column(
              children: [
               Text(item['id']),

                Text(item['validity']),
                
              ],
            ),
          );
        },
        ),
    );
  }
}