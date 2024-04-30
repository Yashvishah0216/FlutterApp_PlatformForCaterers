import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: DessertPage()));
}

class DessertPage extends StatefulWidget {
  const DessertPage({super.key});

  @override
  State<DessertPage> createState() => _DessertPageState();
}

class _DessertPageState extends State<DessertPage> {
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
                "Sugar Boss Caterers",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Select Your Own Dessert',
                style: TextStyle(
                  backgroundColor: Colors.purpleAccent,
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/dwf1.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Cakes\n₹ 500',
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
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.purple),
                            ),
                          ),
                          onPressed: () {},
                          child: Text('ADD'),
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
                  'assets/dfw2.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Jalebi\n₹ 100',
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
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.purple),
                            ),
                          ),
                          onPressed: () {},
                          child: Text('ADD'),
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
                  'assets/dfw3.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Ras Malai\n₹ 150',
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
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.purple),
                            ),
                          ),
                          onPressed: () {},
                          child: Text('ADD'),
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
                  'assets/dfw4.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Ice Creams\n₹ 120',
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
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.purple),
                            ),
                          ),
                          onPressed: () {},
                          child: Text('ADD'),
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
                  'assets/dfw5.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Gulab Jamun\n₹ 80',
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
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.purple),
                            ),
                          ),
                          onPressed: () {},
                          child: Text('ADD'),
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
