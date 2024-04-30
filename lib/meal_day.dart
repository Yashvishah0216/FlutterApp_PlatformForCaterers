import 'package:flutter/material.dart';

import 'meal.dart';

void main() {
  runApp(MaterialApp(
    home: MealDay(),
    debugShowCheckedModeBanner: false,
  ));
}

class MealDay extends StatefulWidget {
  const MealDay({super.key});

  @override
  State<MealDay> createState() => _MealDayState();
}

class _MealDayState extends State<MealDay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
          child: Scrollbar(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return MainMealPage();
                      },
                    ));
                  },
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
                    style:
                        TextStyle(fontSize: 22.0, color: Colors.indigoAccent),
                  ),
                ),
                Image.asset(
                  'assets/logooo.png',
                  height: 60,
                  width: 80,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(Icons.search, color: Colors.black45),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 5),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'search here by name,item,etc..',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  height: 0.5,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Choose your meal of the day',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'meal');
                      },
                      child: Image.asset(
                        'assets/f1.png',
                        height: 100,
                        width: 100,
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('The Tiffin Box',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          )),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        '4.2(1k+)',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        'Daily, Weekly',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/f2.png',
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('The Tiffin Service',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          )),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        '4.0(1.5k+)',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        'Daily, Once',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/f3.png',
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Indian Tiffin Service',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          )),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        '4.0(1.5k+)',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        'Indian Cusine',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/f4.png',
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Moms Tiffin',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          )),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        '4.0(1.5k+)',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        'Indian Cusine',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/f5.png',
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Tiffin Center',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          )),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        '4.0(1.5k+)',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        'Indian Cusine',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ]))),
    );
  }
}
