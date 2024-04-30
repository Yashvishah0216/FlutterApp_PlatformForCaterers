import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ResetPage()));
}

class ResetPage extends StatefulWidget {
  const ResetPage({super.key});

  @override
  State<ResetPage> createState() => _ResetPageState();
}

class _ResetPageState extends State<ResetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body:Stack(
            fit: StackFit.expand,
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/reset.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
                )),
              ),
              Center(
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                      margin: EdgeInsets.only(
                          left: 20, right: 20, top: 150, bottom: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.grey.shade400,
                      )),
                ),
              ),
              Center(
                child: Container(
                    alignment: AlignmentDirectional.center,
                    margin: EdgeInsets.only(top: 200, left: 70, right: 70),
                    child: Column(children: [
                      Container(
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.indigo.shade900, width: 3),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.restart_alt,
                          color: Colors.indigo.shade900,
                          size: 100,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Reset Password",
                          style: TextStyle(
                            color: Colors.indigo.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.lightBlueAccent, width: 3),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: "New Password",
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
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.lightBlueAccent, width: 3),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: "Re-enter New Password",
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
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(color: Colors.lightBlueAccent),
                          )),
                          onPressed: () {
                            Navigator.pushNamed(context, 'login');
                          },
                          child: Text(
                            "Reset",
                            style: TextStyle(
                                fontSize: 20, color: Colors.indigo.shade900),
                          )),
                    ])),
              ),
            ],
          ),
        );
  }
}
