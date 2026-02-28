import 'package:course_flutter_codes/API%20practice/apiService.dart';
import 'package:course_flutter_codes/API%20practice/models/product.dart';
import 'package:flutter/material.dart';

class ApiHomePage extends StatefulWidget {
  const ApiHomePage({super.key});

  @override
  State<ApiHomePage> createState() => _ApiHomePageState();
}

class _ApiHomePageState extends State<ApiHomePage> {
  List<Product> product=[];
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    getProduct();


    
  }

  Future<void> getProduct()async{
      product= await Apiservice.getData();
      setState(() {
        
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: ListView.builder(
        itemCount: product.length,
        itemBuilder: (context,index){
          final item = product[index];
          return Dismissible(
            onDismissed: (direction)async {
            await  Apiservice.deleteData(item.id!);
            await getProduct();
            },
            key: Key(item.id.toString()),
            child: ListTile(
              title: SizedBox(
                height: 200,
                child: Image.network(item.img)),
              subtitle: Text(item.name),
            
            ),
          );
        },
        ),
        floatingActionButton: FloatingActionButton(
          
          onPressed: showAddDialog,
          child: Icon(Icons.add),
          ),
    );

  }

void showAddDialog(){
  TextEditingController _nameController =TextEditingController();
  TextEditingController _priceController =TextEditingController();
  TextEditingController _imgController =TextEditingController();
  TextEditingController _stockController =TextEditingController();
showDialog(
  
  context: context, 
  builder: (context){
  return AlertDialog(
    title: Text('Add New Product'),
    content: Column(
    children: [
      TextField(
        controller: _nameController,
        decoration: InputDecoration(
          hintText: 'Name',

        ),
      ),
      TextField(
        controller: _priceController,
        decoration: InputDecoration(
          hintText: 'Price',
          
        ),
      ),
      TextField(
        controller: _imgController,
        decoration: InputDecoration(
          hintText: 'img url',
          
        ),
      ),
      TextField(
        controller: _stockController,
        decoration: InputDecoration(
          hintText: 'Stock',
          
        ),
      ),
      
    ],
  ),
  actions: [
    ElevatedButton(onPressed: ()async{
      final item = Product(
        name: _nameController.text, price: double.tryParse(_priceController.text)??0, 
        img: _imgController.text, stock: int.tryParse(_stockController.text)??0,);
      await Apiservice.addData(item);
      await getProduct();
      Navigator.pop(context);
    }, child: Text('save')),
  ],
  );

});
}

}