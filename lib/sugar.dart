import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: SugarPage()));
}

class SugarPage extends StatefulWidget {
  const SugarPage({super.key});

  @override
  State<SugarPage> createState() => _SugarPageState();
}

class _SugarPageState extends State<SugarPage> {
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
                    margin: EdgeInsets.only(left: 5, top: 40),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_sharp,
                          color: Colors.indigoAccent, size: 22),
                      onPressed: () {
                        Navigator.pushNamed(context, '');
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
                    child: Icon(Icons.person,
                        color: Colors.indigoAccent, size: 22),
                  ),
                ],
              ),
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
                leading: Image.asset(
                  'assets/dw1.png',
                  height: 100,
                  width: 100,
                ),
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
                          Image.asset(
                            'assets/dw2.png',
                            height: 150,
                            width: 180,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(children: [
                            Text(
                              'Dessert Pack 1',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.pink,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '1. Mini Pastries\n2. Ice cream (Any Flavour)\n3. Gulab Jamun\n4. Any spl request',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(30, 30),
                                      // Adjust as needed
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(color: Colors.purple),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'Book',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    )),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Rs Start at 1000',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10),
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
                          Image.asset(
                            'assets/dw3.png',
                            height: 150,
                            width: 180,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(children: [
                            Text(
                              'Dessert Pack 2',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.pink,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '1. Jalebi\n2. Ice cream (Any Flavour)\n3. Rasmalai\n4. Waffles',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(30, 30),
                                      // Adjust as needed
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(color: Colors.purple),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'Book',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    )),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Rs Start at 1200',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10),
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
                          Image.asset(
                            'assets/dw4.png',
                            height: 130,
                            width: 180,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Text(
                              'Select Your\nOwn Dessert',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.pink,
                                  fontWeight: FontWeight.bold),
                            ),
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
