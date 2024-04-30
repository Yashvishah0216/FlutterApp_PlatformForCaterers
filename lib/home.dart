import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 30),
                    child: Text(
                      'CaterCollab',
                      style: TextStyle(
                        color: Colors.indigoAccent,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 5, top: 40),
                      child: IconButton(
                        icon: Icon(Icons.account_circle_outlined,
                            color: Colors.indigoAccent),
                        iconSize: 40,
                        onPressed: () {
                          Navigator.pushNamed(context, 'user');
                        },
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: EdgeInsets.all(15),
                  prefixIcon: Icon(Icons.search, color: Colors.black45),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: 'search here by name, item, etc..',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    height: 0.5,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: InkWell(
                        splashColor: Colors.black26,
                        onTap: () {
                          Navigator.pushNamed(context, 'home2');
                        },
                        child: Container(
                          height: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: Colors.white, width: 2),
                            image: DecorationImage(
                              image: AssetImage('assets/h1.png'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.6),
                                BlendMode.darken,
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Select Verified Caterers',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: InkWell(
                        splashColor: Colors.black26,
                        onTap: () {
                          Navigator.pushNamed(context, 'top_dish');
                        },
                        child: Container(
                          height: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: Colors.white, width: 2),
                            image: DecorationImage(
                              image: AssetImage('assets/h2.png'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.6),
                                BlendMode.darken,
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Select for top rated dishes',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: InkWell(
                        splashColor: Colors.black26,
                        onTap: () {Navigator.pushNamed(context, 'meal');},
                        child: Container(
                          height: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: Colors.white, width: 2),
                            image: DecorationImage(
                              image: AssetImage('assets/h3.png'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.6),
                                BlendMode.darken,
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Select for FoodBox service',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
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