import 'package:capstone/savourcater.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: DefaultPage(),
  ));
}

class DefaultPage extends StatefulWidget {
  const DefaultPage({super.key});

  @override
  State<DefaultPage> createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SavourPage();
                  },));},
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
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 0),
              child: ListTile(
                title: Text(
                  "Sugar Boss Caterers",
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
                subtitle: Text(
                  "3.6(750+)\n",
                  style: TextStyle(color: Colors.white),
                ),
                /*leading: Image.asset(
                  'assets/dw1.png',
                  height: 100,
                  width: 100,
                ),*/
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Material(
                color: Colors.white,
                elevation: 8,
                borderRadius: BorderRadius.circular(10),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '');
                    },
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Default Pack 1',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.pink,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(Icons.account_box_outlined)
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Min 800',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/d1.png',
                                            height: 150,
                                            width: 180,
                                            fit: BoxFit.cover,
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text('Start at Rs.750')
                                        ],
                                      ),
                                    ),
                                    Text(
                                      'Default Menu 1\n\nMin 800\n2 starers\n1 main course\n2 desserts\n 1 drink',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                )
                              ]),
                        ],
                      ),
                    ))),
            SizedBox(
              height: 15,
            ),
            Material(
                color: Colors.white,
                elevation: 8,
                borderRadius: BorderRadius.circular(10),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '');
                    },
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Default Pack 2',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.pink,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(Icons.account_box_outlined)
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Min 850',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/d1.png',
                                            height: 150,
                                            width: 180,
                                            fit: BoxFit.cover,
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text('Start at Rs.850')
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'Default Menu 2\n\nMin 850\n2 starers\n2 main course\n2 desserts\n 2 drink',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                )
                              ]),
                        ],
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}