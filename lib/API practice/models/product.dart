class Product {
  final int? id;
  final String name;
  final double price;
  final String img;
  final int stock;

  Product({
    this.id,
    required this.name,
    required this.price,
    required this.img,
    required this.stock,
  });

  factory Product.fromMap(Map<String, dynamic> data) {
    return Product(
      id: data['id'],
      name: data['name'],
      price: data['price'],
      img: data['img'],
      stock: data['stock'],
    );
  }

static  List<Product> getList(dynamic data){
  List<Product> itemList= [];
    for(final item in data){
     itemList.add( Product.fromMap(item));
    }
    return itemList;
  }


Map<String,dynamic> toMap(){
  return {
    'name':name,
    'price':price,
    'img':img,
    'stock':stock
  };
}

}
