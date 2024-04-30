import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ForgotPage()));
}

class ForgotPage extends StatefulWidget {
  const ForgotPage({super.key});

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body:Stack(fit: StackFit.expand, children: [
                Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/forgot.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            ),
          ),
                ),
                Center(
            child: Opacity(
                opacity: 0.5,
                child: Container(
                    margin:
                        EdgeInsets.only(left: 20, right: 20, top: 150, bottom: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.grey.shade400,
                    )))),
                Center(
          child: Container(
            alignment: AlignmentDirectional.center,
            margin: EdgeInsets.only(top: 200, left: 70, right: 70),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.indigo.shade900, width: 3),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.lock_outline,
                      color: Colors.indigo.shade900, size: 100),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "FORGOT PASSWORD",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo.shade900,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Enter Your Phone number To Recover Password",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.indigo.shade900,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.lightBlueAccent, width: 3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Enter Your Phone Number",
                    labelStyle: TextStyle(
                      fontSize: 20,
                      height: 0.5,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                        side: BorderSide(color: Colors.lightBlueAccent),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'otp');
                    },
                    child: Text(
                      "Send OTP",
                      style:
                          TextStyle(fontSize: 20, color: Colors.indigo.shade900),
                    )),
              ],
            ),
          ),
                )
              ]),
        );
  }
}
