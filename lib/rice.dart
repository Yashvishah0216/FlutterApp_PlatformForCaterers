import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: RicePage()));
}

class RicePage extends StatefulWidget {
  const RicePage({super.key});

  @override
  State<RicePage> createState() => _RicePageState();
}

class _RicePageState extends State<RicePage> {
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
        Text('Rice',
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
              'assets/rice1.png',
              height: 100,
              width: 100,
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Steamed Rice\n₹ 130',
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
              'assets/rice2.png',
              height: 100,
              width: 100,
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Jeera Rice\n₹ 140',
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
              'assets/rice3.png',
              height: 100,
              width: 100,
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Vegetable Pulav\n₹ 150',
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
              'assets/rice4.png',
              height: 100,
              width: 100,
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Veg Biryani\n₹ 160',
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
              'assets/rice5.png',
              height: 100,
              width: 100,
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Khichadi\n₹ 120',
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
