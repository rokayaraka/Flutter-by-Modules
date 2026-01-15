import 'package:course_flutter_codes/Navigation/NavigatorHome.dart';
import 'package:flutter/material.dart';

class NewItem extends StatelessWidget {
 final TextEditingController itemNameController = TextEditingController();
 final TextEditingController itemPriceController = TextEditingController();
 final TextEditingController itemQuantityController = TextEditingController();
  NewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add new Item")),
      body: Column(
        children: [
          TextField(
            controller: itemNameController,
            decoration: InputDecoration(labelText: "Item Name"),
          ),

          TextField(
            controller: itemPriceController,
            decoration: InputDecoration(labelText: "Item Price"),
          ),
          TextField(
            controller: itemQuantityController,
            decoration: InputDecoration(labelText: "Item Quantity"),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.pop(
                context,
                GroceryItem(
                  name: itemNameController.text,
                  id: DateTime.now().toString(),
                  price: double.tryParse(itemPriceController.text)??0,
                  quantity: itemQuantityController.text,
                ),
              );
            },
            child: Text("Add"),
          ),
        ],
      ),
    );
  }
}
