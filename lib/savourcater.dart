import 'package:flutter/material.dart';

import 'home2.dart';

void main() {
  runApp(MaterialApp(home: SavourPage()));
}

class SavourPage extends StatefulWidget {
  const SavourPage({super.key});

  @override
  State<SavourPage> createState() => _SavourPageState();
}

class _SavourPageState extends State<SavourPage> {
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
                  return CatererList();
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
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 17.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    'assets/v1.png',
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
                        "Savour Catering Service",
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
                        "4.2(1k+)",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Material(
                color: Colors.white,
                elevation: 8,
                borderRadius: BorderRadius.circular(10),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'default1');
                    },
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/s1.png',
                            height: 150,
                            width: 350,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'Default Platter 1',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ],
                      ),
                    ))),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Material(
                color: Colors.white,
                elevation: 8,
                borderRadius: BorderRadius.circular(10),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/s2.png',
                            height: 150,
                            width: 350,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'Default Platter 2',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ],
                      ),
                    ))),
          ),
          SizedBox(
            height: 20,
          ),
          /*Container(
            margin: EdgeInsets.all(10),
            child: Material(
                color: Colors.white,
                elevation: 8,
                borderRadius: BorderRadius.circular(10),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'craft');
                    },
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/s3.png',
                            height: 150,
                            width: 350,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ))),
          ),*/
        ],
      )),
    );
  }
}
