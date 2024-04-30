import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SubscriptionPage(),
  ));
}

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({Key? key}) : super(key: key);

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 5, 10.0, 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {

                  },
                  icon: ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        colors: [
                          Colors.blue,
                          Colors.purple
                        ], // Gradient colors
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
                    style: TextStyle(
                        fontSize: 15.0, color: Color(0xFF8A96FA)),
                  ),
                ),
                IconButton(
                  onPressed: () {

                  },
                  icon: Icon(
                      Icons.account_circle_outlined, color: Colors.blue,
                      size: 30.0),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Subscription Plans',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 5.0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'How It Works: Easy as 1-2-3',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.purpleAccent,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'a. Browse Our Menu: Check out our daily-changing menu online.',
                              style: TextStyle(fontSize: 13.0),
                            ),
                            SizedBox(height: 8),
                            Text('b. Place Your Order',
                                style: TextStyle(fontSize: 13.0)),
                            SizedBox(height: 8),
                            Text('c. Enjoy Timely Delivery',
                                style: TextStyle(fontSize: 13.0)),
                            SizedBox(height: 8),
                            Text('d. Delivery charges excluded.',
                                style: TextStyle(fontSize: 13.0)),
                            SizedBox(height: 20),
                            // Add some space between containers
                            Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.grey, width: 5.0),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Additional Information:',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.green,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'This subscription plan provides lunch for a single person on a daily basis.',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20), // Add some space between containers
                      Container(
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.yellow, width: 5.0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Subscription Plans',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.green,
                              ),
                            ),
                            SizedBox(height: 3),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.grey, width: 3.0),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Daily 200/-',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.purpleAccent,
                                              ),
                                            ),
                                            ElevatedButton(
                                              onPressed: () {
                                                // Button onPressed logic
                                              },
                                              style: ElevatedButton.styleFrom(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 10, horizontal: 15),
                                                primary: Colors.white,
                                                // Button background color
                                                onPrimary: Colors.green,
                                                // Text color
                                                side: BorderSide(
                                                    color: Color(0xFFF902EF),
                                                    width: 1.5),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.zero,
                                                ),
                                              ),
                                              child: Text(
                                                "Subscribe",
                                                style: TextStyle(
                                                    fontSize: 12.0,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        // Add some space between the texts and the additional container
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.grey, width: 3.0),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Weekly 1300/-',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.purpleAccent,
                                              ),
                                            ),
                                            ElevatedButton(
                                              onPressed: () {
                                                // Button onPressed logic
                                              },
                                              style: ElevatedButton.styleFrom(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 10, horizontal: 15),
                                                primary: Colors.white,
                                                // Button background color
                                                onPrimary: Colors.green,
                                                // Text color
                                                side: BorderSide(
                                                    color: Color(0xFFF902EF),
                                                    width: 1.5),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.zero,
                                                ),
                                              ),
                                              child: Text(
                                                "Subscribe",
                                                style: TextStyle(
                                                    fontSize: 12.0,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        // Add some space between the texts and the additional container
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.grey, width: 3.0),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Monthly 5900/-',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.purpleAccent,
                                              ),
                                            ),
                                            ElevatedButton(
                                              onPressed: () {
                                                // Button onPressed logic
                                              },
                                              style: ElevatedButton.styleFrom(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 10, horizontal: 15),
                                                primary: Colors.white,
                                                // Button background color
                                                onPrimary: Colors.green,
                                                // Text color
                                                side: BorderSide(
                                                    color: Color(0xFFF902EF),
                                                    width: 1.5),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.zero,
                                                ),
                                              ),
                                              child: Text(
                                                "Subscribe",
                                                style: TextStyle(
                                                    fontSize: 12.0,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        // Add some space between the texts and the additional container
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

