import 'package:capstone/home.dart';
import 'package:capstone/registration_button.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'home2.dart';


class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> _login(BuildContext context) async {
    final String url = 'http://192.168.181.150/CaterCollab_AdminPanel/login_api.php';

    try {
      final response = await http.post(
        Uri.parse(url),
        body: {
          'EMAIL': usernameController.text,
          'PASSWORD': passwordController.text,
        },
      );

      if (response.statusCode == 200) {
        // Parse response data
        final responseData = jsonDecode(response.body);

        if (responseData['success']) {
          // Login successful
          // Navigate to Caterer list page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()), // Replace CatererList() with your Caterer list page
          );
        } else {
          // Login failed
          // Display error message
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Login Failed'),
              content: Text(responseData['message']),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('OK'),
                ),
              ],
            ),
          );
        }
      } else {
        // Handle server error
        print('Server error: ${response.statusCode}');
      }
    } catch (error) {
      // Handle network error
      print('Error: $error');
    }
  }


  void main() {
    runApp(MaterialApp(
      home: LoginPage(),
    ));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:Stack(fit: StackFit.expand, children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/register.jpg'),
              fit: BoxFit.cover,
              colorFilter:
              ColorFilter.mode(Colors.black45, BlendMode.darken),
            ),
          ),
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
                    )))),
        Center(
          child: Container(
            alignment: AlignmentDirectional.center,
            margin: EdgeInsets.only(top: 200, left: 70, right: 70),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border:
                    Border.all(color: Colors.indigo.shade900, width: 3),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.person,
                      color: Colors.indigo.shade900, size: 100),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "LOGIN",
                  style: TextStyle(
                      color: Colors.indigo.shade900,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.lightBlueAccent, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Username",
                    labelStyle: TextStyle(
                        height: 0.3,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo.shade900),
                    hintText: "Enter your email",
                    hintStyle: TextStyle(
                      fontSize: 12,
                      color: Colors.indigo,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,

                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.lightBlueAccent, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Password",
                      labelStyle: TextStyle(
                          height: 0.3,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo.shade900),
                      hintText: "Enter your password",
                      hintStyle: TextStyle(
                        fontSize: 12,
                        color: Colors.indigo,
                      ),
                      prefixIcon: Icon(Icons.visibility_off, color: Colors.black45),
                    )),
                SizedBox(height: 0.5),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'fp');
                    },
                    child: Text(
                      "forgot password?",
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 15.0,
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: Colors.lightBlueAccent),
                      ),
                    ),
                    onPressed: () {
                      //Navigator.pushNamed(context, 'home2');
                      _login(context);
                    },
                    child: Text(
                      "login",
                      style: TextStyle(
                          fontSize: 15, color: Colors.indigo.shade900),
                    )),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return RegisterButton();
                    },));
                  },
                  child: Text(
                    "New User? Register Here",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.indigo.shade900,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.indigo.shade900,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}