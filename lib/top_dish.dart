
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ChoicePage()));
}

class ChoicePage extends StatefulWidget {
  const ChoicePage({super.key});

  @override
  State<ChoicePage> createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage> {
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
                            child: Icon(Icons.person,
                                color: Colors.indigoAccent, size: 22),
                          ),
                        ],
                      ),
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
                    Text('Choose of your choice',
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
                                Navigator.pushNamed(context, '');
                              },
                              child: Image.asset(
                                'assets/sm1.png',
                                height: 100,
                                width: 100,
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Paneer Butter Masala ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  )),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                'by Shah Caterers\n4.2(1k+)',
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
                            'assets/sm2.png',
                            height: 100,
                            width: 100,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Lasagna',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  )),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                'by B.K. Caterers\n3.9(1.6k+)',
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
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/sm4.png',
                            height: 100,
                            width: 100,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Biryani(non-veg) ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  )),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                'by Mughal Caterers',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                '3.5(1.2k+)',
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
                            'assets/img.png',
                            height: 100,
                            width: 100,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Chinnes Platter',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  )),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                'by Events Caterers',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                '4.2(1k+)',
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
                            'assets/sm1.png',
                            height: 100,
                            width: 100,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Best Sliders',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  )),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                'by Small Bites Caterers',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                '3.0(960+)',
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
