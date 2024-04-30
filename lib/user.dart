import 'package:flutter/material.dart';

import 'cart.dart';
import 'login.dart';


void main() {
  runApp(MaterialApp(home: AccountPage()));
}


class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  String userName = "username"; // Dynamically change the user name

  List<Map<String, dynamic>> sections = [
    {'title': 'Login', 'icon': Icons.login},
    {'title': 'My Cart', 'icon': Icons.shopping_cart},
    {'title': 'My Wishlist', 'icon': Icons.favorite},
    {'title': 'My Orders', 'icon': Icons.history},
    {'title': 'Delivery Location', 'icon': Icons.location_on},
    {'title': 'Partnerships', 'icon': Icons.business},
    {'title': 'Notifications', 'icon': Icons.notifications},
    {'title': 'Help Center', 'icon': Icons.help},
    {'title': 'Delete Account', 'icon': Icons.delete},
    {'title': 'Logout', 'icon': Icons.exit_to_app}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Account Settings",selectionColor: Colors.white,),
        backgroundColor: Colors.grey,
        leading: IconButton(
          onPressed: () {Navigator.pop(context);},
          icon: Icon(Icons.arrow_back_sharp),
        ),
        // leading: CircleAvatar( // Blue user icon
        //   backgroundColor: Colors.grey,
        //   child: Icon(Icons.account_circle_outlined, color: Colors.blueAccent,size: 40.0,),
        // ),
      ),
      body: ListView.separated(
        itemCount: sections.length,
        separatorBuilder: (BuildContext context, int index) => Divider(color: Colors.white),
        itemBuilder: (context, index) {
          return ListTile(
            tileColor: Colors.black,
            leading: Icon(sections[index]['icon'], color: Colors.white),
            title: Text(sections[index]['title'], style: TextStyle(color: Colors.white)),
            onTap: () {
              // Handle onTap based on the selected section
              handleSectionTap(sections[index]['title']);
            },
          );
        },
      ),
    );
  }

  void handleSectionTap(String section) {
    switch (section) {
      case 'Login':
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return LoginPage();
        },));
        break;
      case 'My Cart':
      // Navigate to My Cart screen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CartPage()),
        );
        break;
      case 'My Wishlist':
      // Navigate to My Wishlist screen
        break;
      case 'My Orders':
      // Navigate to My Orders screen
        break;
      case 'Delivery Location':
      // Handle Delivery Location
        break;
      case 'Partnerships':
      // Handle Partnerships
        break;
      case 'Notifications':
      // Handle Notifications
        break;
      case 'Help Center':
      // Handle Help Center
        break;
      case 'Delete Account':
      // Handle Delete Account
        break;
      case 'Logout':
      // Handle Logout
        break;
      default:
      // Handle default case
        break;
    }
  }
}

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
      ),
      body: Center(
        child: Text('My Cart Screen'),
      ),
    );
  }
}