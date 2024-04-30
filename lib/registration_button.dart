import 'package:capstone/caterregister.dart';
import 'package:flutter/material.dart';

import 'customerregister.dart';

class RegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/register.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.8), // Adjust opacity here
                  BlendMode.darken,
                ),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 150.0, left: 160, right: 100),
              child: Icon(
            Icons.account_circle_outlined,
            color: Colors.indigo,
                size: 60,
          )),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.only(top: 230.0, left: 45, right: 30),
            child: Text(
              'Choose Your Registration',
              style: TextStyle(
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Container(
                    width: screenWidth * 0.4, // Adjust button width as needed
                    height: screenWidth * 0.4, // Adjust button height as needed
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigate to caterer registration screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              0), // Set to 0 to make it square
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.restaurant), // Icon on leading side
                          SizedBox(height: 10), // Space between icon and text
                          Text('Caterer Registration'),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20), // Space between buttons
                Flexible(
                  child: Container(
                    width: screenWidth * 0.4, // Adjust button width as needed
                    height: screenWidth * 0.4, // Adjust button height as needed
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CustomerRegisterPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              0), // Set to 0 to make it square
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person), // Icon on leading side
                          SizedBox(height: 10), // Space between icon and text
                          Text('Customer Registration'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
