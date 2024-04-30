import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: RotiPage()));
}

class RotiPage extends StatefulWidget {
  const RotiPage({super.key});

  @override
  State<RotiPage> createState() => _RotiPageState();
}

class _RotiPageState extends State<RotiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 5, top: 40),
                child: IconButton(
                  icon: Icon(Icons.arrow_back_sharp,
                      color: Colors.indigoAccent, size: 22),
                  onPressed: () {
                    Navigator.pushNamed(context, 'home');
                  },
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 170, top: 40),
                  child: Text(
                    'CaterCollab',
                    style: TextStyle(
                      color: Colors.indigoAccent,
                      fontSize: 22,
                    ),
                  )),
              Container(
                margin: EdgeInsets.only(right: 5, top: 40),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.indigoAccent, width: 3),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.person, color: Colors.indigoAccent, size: 22),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Center(
          child: Image.asset(
            'assets/v1.png',
            height: 100,
            width: 100,
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Center(
          child: Text(
            "Savour Catering Service",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Center(
          child: Text('Roti',
              style: TextStyle(
                backgroundColor: Colors.purpleAccent,
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              )),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/rm1.png',
              height: 100,
              width: 100,
            ),
            SizedBox(
              width: 3,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Chapati\n₹ 15',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(20, 30),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.purple),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'add_item');
                      },
                      child: Text(
                        'ADD',
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/rm2.png',
              height: 100,
              width: 100,
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Naan\n₹ 30',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(20, 30),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.purple,
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'add_item');
                        },
                        child: Text(
                          'ADD',
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 20,
                          ),
                        )),
                  ],
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/rm3.png',
              height: 100,
              width: 100,
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Parotha\n₹ 60',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(20, 30),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.purple),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'add_item');
                      },
                      child: Text(
                        'ADD',
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/rm4.png',
              height: 100,
              width: 100,
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Kulcha\n₹ 80',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(20, 30),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.purple),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'add_item');
                      },
                      child: Text(
                        'ADD',
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/rm5.png',
              height: 100,
              width: 100,
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Rumali Roti\n₹ 60',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(20, 30),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.purple),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'add_item');
                      },
                      child: Text(
                        'ADD',
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ])),
    );
  }
}
