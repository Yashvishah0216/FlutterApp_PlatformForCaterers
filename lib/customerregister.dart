import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'login.dart';

class CustomerRegisterPage extends StatelessWidget {
  final TextEditingController NameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController line2AddressController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController postalCodeController = TextEditingController();

  Future<void> _registerUser(BuildContext context) async {
    final String url =
        'http://192.168.181.150/CaterCollab_AdminPanel/customer_register_api.php';

    try {
      final response = await http.post(
        Uri.parse(url),
        body: {
          'NAME': NameController.text,
          'EMAIL': emailController.text,
          'PASSWORD': passwordController.text,
          'PHN_NO': phoneNumberController.text,
          'LINE1_ADDRESS': addressController.text,
          'LINE2_ADDRESS': line2AddressController.text,
          'CITY': cityController.text,
          'STATE': stateController.text,
          'POSTAL_CODE': postalCodeController.text,
        },
      );

      if (response.statusCode == 200) {
        // Registration successful
        print('Customer Registration successful');
        // Navigate to the login page or any other page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
        // Navigator.pushNamed(context, 'login');
      } else {
        // Registration failed
        print('Customer Registration failed');
      }
    } catch (error) {
      // Handle error
      print('Error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 100),
                  Text(
                    "REGISTRATION FOR CUSTOMERS",
                    style: TextStyle(
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  _buildTextField(
                    controller: NameController,
                    hintText: "Name*",
                  ),
                  SizedBox(height: 10),
                  _buildTextField(
                    controller: emailController,
                    hintText: "Email*",
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: _buildTextField(
                          controller: passwordController,
                          hintText: "Password*",
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: _buildTextField(
                          controller: phoneNumberController,
                          hintText: "Phone Number*",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  _buildTextField(
                    controller: addressController,
                    hintText: "Address*",
                  ),
                  SizedBox(height: 10),
                  _buildTextField(
                    controller: line2AddressController,
                    hintText: "Line 2 address",
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: _buildTextField(
                          controller: cityController,
                          hintText: "City*",
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: _buildTextField(
                          controller: stateController,
                          hintText: "State*",
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: _buildTextField(
                          controller: postalCodeController,
                          hintText: "Postal Code*",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => _registerUser(context),
                    child: Text('Register'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(
      {required TextEditingController controller, required String hintText}) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: Colors.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        hintStyle: TextStyle(
          fontSize: 12,
          color: Colors.indigo,
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CustomerRegisterPage(),
  ));
}