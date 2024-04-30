import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'cart.dart';

class CatererMenuList extends StatefulWidget {
  final String catererId;

  const CatererMenuList({Key? key, required this.catererId}) : super(key: key);

  @override
  _CatererMenuListState createState() => _CatererMenuListState();
}

class _CatererMenuListState extends State<CatererMenuList> {
  List<dynamic> menuItems = [];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Future<void> fetchMenuItems() async {
    final response = await http.get(Uri.parse(
        'http://192.168.181.150/CaterCollab_AdminPanel/caterer_menu_api.php?catererId=${int.parse(widget.catererId)}'));

    if (response.statusCode == 200) {
      setState(() {
        menuItems = json.decode(response.body);
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchMenuItems();
  }
  void addToCart(dynamic item) {
    setState(() {
      CartPage.cartItems.add(item);
    });
    // Navigate to CartPage
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CartPage()),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0 , 15.0 , 10.0, 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {Navigator.pop(context);},
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
            SizedBox(height: 15),
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
            //SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(top: 15.0,right: 10.0,left: 10.0),
              child: Text('Make Your Own Platter',style: TextStyle(color: Color(0xFF8A96FA), fontSize: 20),),
            ),
            //SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                itemCount: menuItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: Colors.black,
                    child: ListTile(
                      title: Text(
                        menuItems[index]['ITEM_NAME'],
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        'Rs.${menuItems[index]['PRICE']}',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: ElevatedButton(
                        onPressed: () {
                          addToCart(menuItems[index]);
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('${menuItems[index]['ITEM_NAME']} added to cart.'),
                          ));

                        },
                        child: Text("Add to Cart"),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.indigo.shade900,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.pushNamed(context, 'home');

              },
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.history),
              onPressed: () {
                // Navigate to search screen
              },
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.pushNamed(context, 'user');

              },
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.pushNamed(context, 'cart');
              },
            ),
            label: 'My Cart',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }


}
