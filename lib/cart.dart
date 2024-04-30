import 'package:flutter/material.dart';
import 'checkout.dart';

class CartPage extends StatefulWidget {
  static List<dynamic> cartItems = []; // Static list to hold cart items

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  double totalPrice = 0;

  @override
  void initState() {
    super.initState();
  }

  void discardItem(int index) {
    setState(() {
      CartPage.cartItems.removeAt(index);
    });
  }

  void proceedToCheckout() {
    // Implement logic to proceed to checkout
    // For example, you can navigate to a checkout screen
    Navigator.push(context, MaterialPageRoute(builder: (context) => CheckoutPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 15.0, 18.0, 16.0),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        colors: [Colors.blue, Colors.purple],
                      ).createShader(bounds);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    "CaterCollab",
                    style: TextStyle(fontSize: 22.0, color: Color(0xFF8A96FA)),
                  ),
                ),
                Image.asset(
                  'assets/logooo.png',
                  height: 60,
                  width: 80,
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.purple, width: 1),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search, color: Colors.purple),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search here by name,item,..',
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: CartPage.cartItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(CartPage.cartItems[index]['ITEM_NAME'], style: TextStyle(color: Colors.white),),
                    subtitle: Text('Rs.${CartPage.cartItems[index]['PRICE']}', style: TextStyle(color: Colors.white),),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      color: Colors.white,
                      onPressed: () => discardItem(index),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20), // Add some space between the list and the button
            ElevatedButton(
              onPressed: () => proceedToCheckout(),
              child: Text('Proceed to Checkout'),

            ),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
