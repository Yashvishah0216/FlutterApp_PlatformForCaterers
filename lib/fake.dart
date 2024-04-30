import 'package:flutter/material.dart';

void main() {
  runApp(MyCartApp());
}

class MyCartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Cart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyCartPage(),
    );
  }
}

class MyCartPage extends StatefulWidget {
  @override
  _MyCartPageState createState() => _MyCartPageState();
}

class _MyCartPageState extends State<MyCartPage> {
  List<Product> _cartItems = [];

  void _addToCart(Product product) {
    setState(() {
      _cartItems.add(product);
    });
  }

  void _removeFromCart(Product product) {
    setState(() {
      _cartItems.remove(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
      ),
      body: ListView.builder(
        itemCount: _cartItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_cartItems[index].name),
            subtitle: Text('Price: \$${_cartItems[index].price.toString()}'),
            trailing: IconButton(
              icon: Icon(Icons.remove_shopping_cart),
              onPressed: () {
                _removeFromCart(_cartItems[index]);
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your product here
          Product newProduct = Product(name: 'New Product', price: 10.0);
          _addToCart(newProduct);
        },
        tooltip: 'Add Product',
        child: Icon(Icons.add),
      ),
    );
  }
}

class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});
}
