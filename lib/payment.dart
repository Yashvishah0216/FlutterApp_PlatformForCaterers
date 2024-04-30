import 'package:flutter/material.dart';

import 'checkout.dart';

void main() {
  runApp(MaterialApp(
    home: PaymentPage(),
  ));
}

Color customColor = Color(0xFF8A75B8);

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CheckoutPage();
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
            Container(
              width: screenWidth,
              height: 30.0,
              decoration: BoxDecoration(
                color: customColor,
                border: Border.all(
                  color: Colors.white,
                  width: 2.0,
                ),

              ),
              alignment: Alignment.center,
              child: Text(
                'Payment',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            SizedBox(height: 30.0),
            PaymentOption(
              icon: Icons.payment,
              text: 'Pay using UPI',
            ),
            SizedBox(height: 20.0),
            PaymentOption(
              icon: Icons.payments_outlined,
              text: 'Pay Cash',
            ),
            SizedBox(height: 20.0),
            PaymentOption(
              icon: Icons.account_balance,
              text: 'Net Banking',
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentOption extends StatelessWidget {
  final IconData icon;
  final String text;

  const PaymentOption({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Icon(
            icon,
            size: 40.0,
            color: Colors.white,
          ),
        ),
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              side: BorderSide(color: Colors.white, width: 2),
              primary: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
              minimumSize: Size(0, 60),
            ),
            child: Text(
              text,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
