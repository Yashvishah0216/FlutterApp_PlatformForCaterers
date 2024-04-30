import 'dart:async';

import 'package:capstone/login.dart';
import 'package:flutter/material.dart';


class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    Timer (Duration(seconds: 4), (){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage() ,
          ));
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
          fit: StackFit.expand,
          children: [
      Container(
      decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/mainbg1.jpg'),
      fit: BoxFit.cover,
      colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
    ))),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Center(
                    child: Image.asset(
                      'assets/logooo.png',
                      height: 300,
                      width: 300,
                    ),
                  ),
                ),

              ],
            ),
          ],
      ),
    );
  }
}