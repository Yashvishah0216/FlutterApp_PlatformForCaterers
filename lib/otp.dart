import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: OtpPage()));
}

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(fit: StackFit.expand, children: [
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
          image: AssetImage('assets/otp.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
        ))),
        Center(
          child: Opacity(
            opacity: 0.5,
            child: Container(
                margin:
                    EdgeInsets.only(left: 20, right: 20, top: 150, bottom: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey.shade400,
                )),
          ),
        ),
        Container(
          alignment: AlignmentDirectional.center,
          margin: EdgeInsets.only(top: 200, left: 70, right: 70),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.indigo.shade900, width: 3),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.password_rounded,
                  color: Colors.indigo.shade900,
                  size: 100,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Enter OTP",
                  style: TextStyle(
                    color: Colors.indigo.shade900,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  )),
              SizedBox(
                height: 15,
              ),
              Text("Enter 4 digit Code",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.indigo.shade900,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.lightBlueAccent, width: 3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Enter Your code",
                  labelStyle: TextStyle(
                    fontSize: 20,
                    height: 0.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Resend OTP",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.indigo.shade900,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                      side: BorderSide(color: Colors.lightBlueAccent),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'reset');
                  },
                  child: Text(
                    "Verify",
                    style:
                        TextStyle(fontSize: 20, color: Colors.indigo.shade900),
                  )),
            ],
          ),
        ),
      ]),
    );
  }
}
