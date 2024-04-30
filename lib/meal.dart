import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MainMealPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class MainMealPage extends StatefulWidget {
  const MainMealPage({Key? key}) : super(key: key);

  @override
  State<MainMealPage> createState() => _MainMealPageState();
}

class _MainMealPageState extends State<MainMealPage> {

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.only(top: 15, left: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {Navigator.pushNamed(context, 'home');},
                  icon: ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        colors: [Colors.blue, Colors.purple], // Gradient colors
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
                    style: TextStyle(fontSize: 22.0, color: Colors.indigoAccent),
                  ),
                ),
                Image.asset('assets/logooo.png',height: 60, width: 80,),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 17.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      'assets/tiffin.jpeg',
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "The Tiffin Box",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Icon(Icons.verified_outlined,
                            color: Colors.green, size: 18),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.grey, size: 18),
                        SizedBox(width: 5),
                        Text(
                          "4.5 ",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "| (1.5k) reviews",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'meal_type_page');
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      primary: Colors.white,
                      // Button background color
                      onPrimary: Colors.green,
                      // Text color
                      side: BorderSide(color: Colors.yellow, width: 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Available Meals',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(width: 16),
              ],
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.yellow, width: 2),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Subscription",
                        style: TextStyle(fontSize: 16, color: Colors.green),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 2.5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Why Choose Delicious Daily Tiffins?",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFF902EF),
                              ),
                            ),
                            SizedBox(height: 10), // Spacer

                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "🌱 ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.green,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Nutrition at Your Doorstep\n",
                                  ),
                                  TextSpan(
                                    text: "⏰ ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.orange,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Save Time, Eat Well\n",
                                  ),
                                  TextSpan(
                                    text: "🌈 ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.purple,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Variety to Savor\n",
                                  ),
                                  TextSpan(
                                    text: "Our Promise: Quality First\n",
                                  ),
                                  TextSpan(
                                    text: "🍽️ ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.brown,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Gourmet Goodness\n",
                                  ),
                                  TextSpan(
                                    text: "🌡️ ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.red,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Safety Sealed",
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'meal_plan');
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          primary: Colors.white,
                          onPrimary: Colors.green,
                          side:
                          BorderSide(color: Color(0xFFF902EF), width: 1.5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        child: Text(
                          "To know PLANS!",
                          style: TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
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
                // Navigate to home screen
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
                Navigator.pushNamed(context, 'add_item');

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
