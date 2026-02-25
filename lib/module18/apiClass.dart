import 'dart:convert';
import 'dart:developer';

import 'package:course_flutter_codes/CRUD/model/product.dart';
import 'package:course_flutter_codes/CRUD/utils/urls.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class ApiCallClass extends StatefulWidget {
  const ApiCallClass({super.key});

  @override
  State<ApiCallClass> createState() => _ApiCallClassState();
}

class _ApiCallClassState extends State<ApiCallClass> {
 

  List <Product> products=[];
  Future<void>getProducts()async{
    final url= Uri.parse(Urls.readProduct);
    final response =await http.get(url);

    if(response.statusCode==200){
      final jsonResponse = jsonDecode(response.body);
      print(response.body);
      log(jsonResponse[0].runtimeType.toString());
        for(dynamic item in jsonResponse){
          final product=Product.fromJson(item);
          log(product.runtimeType.toString());

          products.add(product);
        }
      setState(() {
      
      
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
               SizedBox(
                height: 100,
                child: Image.network(item.image,fit: BoxFit.cover,)),

                Text(item.title),
                
                
              ],
            ),
          );
        },
        ),
    );
  }
}