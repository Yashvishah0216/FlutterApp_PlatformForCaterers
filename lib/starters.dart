import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: StarterPage()));
}

class StarterPage extends StatefulWidget {
  const StarterPage({super.key});

  @override
  State<StarterPage> createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage> {
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
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Starters',
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
                  'assets/star1.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Hara Bhara Kabab\n₹ 120',
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
                  'assets/star2.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Aloo Tikki Chat\n₹ 150',
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
                  'assets/star3.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Manchow Soup\n₹ 200',
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
                  'assets/star4.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Tomato Soup\n₹ 180',
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
