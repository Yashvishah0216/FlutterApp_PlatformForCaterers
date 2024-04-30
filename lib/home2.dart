import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'company_menu_list.dart';

void main() {
  runApp(MaterialApp(home: CatererList()));
}

class CatererList extends StatefulWidget {
  const CatererList({Key? key}) : super(key: key);

  @override
  State<CatererList> createState() => _CatererListState();
}

class _CatererListState extends State<CatererList> {
  List<dynamic> caterers = [];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Future<void> fetchData() async {
    final response = await http.get(
        Uri.parse('http://192.168.181.150/CaterCollab_AdminPanel/caterer_api.php'));

    if (response.statusCode == 200) {
      setState(() {
        caterers = json.decode(response.body);
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12.0, 15, 16.0, 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Column(
              children: [
                SizedBox(height: 10.0,),
                Container(
                  margin: EdgeInsets.only(left: 18.0),
                  child: Text(
                    'Verified Catering Companies',
                    style: TextStyle(color: Color(0xFF8A96FA), fontSize: 17),
                  ),
                )
              ],
            ),
            SizedBox(height: 5),
            Expanded(
              child: ListView.builder(
                itemCount: caterers.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: Colors.black,
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CatererMenuList(
                                catererId: caterers[index]['CATERER_ID']),
                          ),
                        );
                      },
                      title: Row(
                        children: [
                          Text(
                            caterers[index]['COMPANY_NAME'],
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Icon(
                            Icons.verified,
                            color: Colors.green,
                            size: 15,
                          )
                        ],
                      ),
                      leading: Icon(Icons.restaurant_rounded,
                          size: 25, color: Colors.grey),
                      trailing: Icon(
                        Icons.navigate_next,
                        color: Colors.grey,
                        size: 30,
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
/*import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(home: CatererList()));
}

class CatererList extends StatefulWidget {
  const CatererList({Key? key}) : super(key: key);

  @override
  State<CatererList> createState() => _CatererListState();
}

class _CatererListState extends State<CatererList> {
  // Example hardcoded caterer data
  List<dynamic> caterers = [];

  Future<void> fetchData() async {
    final response =
    //await http.get(Uri.parse('http://192.168.5.179/trydb/try.php'));
    await http.get(Uri.parse('http://192.168.234.1/CaterCollab_AdminPanel/caterer_api.php'));

    if (response.statusCode == 200) {
      setState(() {
        caterers = json.decode(response.body);
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<void> _refreshData() async {
    await fetchData();
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.only(top: 20, left: 5),
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
                        colors: [Colors.blue, Colors.indigoAccent],
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
            SizedBox(height: 20),
            // search bar
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.lightBlueAccent, width: 2),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search, color: Colors.grey),
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
            SizedBox(height: 20),
            //list view
            Expanded(
              child: ListView.builder(
                itemCount: caterers.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: Colors.black,
                    child: ListTile(
                      onTap: () {},
                      //leading: Image.network( "http//localhost/CaterCollab_AdminPanel/logo/"+ (caterers[index]['LOGO_NAME']??''),
                        leading:  Image.network("http://localhost/CaterCollab_AdminPanel/logo/" + (caterers[index]['LOGO_NAME']??''),
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),

                      title: Text(
                        caterers[index]['COMPANY_NAME'],
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.white,size: 15.0,),
                              Text(
                                caterers[index]['RATINGS'].toString(),
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.thumb_up_alt, color: Colors.white,size:15.0),
                              Text(
                                caterers[index]['CUSINE_TYPE'],
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/
