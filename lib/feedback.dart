import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FeedbackPage(),
  ));
}

TextEditingController name_feedback = new TextEditingController();
TextEditingController comment_feedback = new TextEditingController();

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({Key? key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  double _rating = 3.5; // Initial rating value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                // IconButton(
                //   onPressed: () {},
                //   icon: Icon(Icons.arrow_back, color: Colors.blue),
                // ),
                IconButton(
                  onPressed: () {},
                  icon: ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        colors: [Colors.blue, Colors.purple], // Gradient colors
                      ).createShader(bounds);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),

                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "CaterCollab",
                          style: TextStyle(fontSize: 22.0, color: Color(0xFF8A96FA)),
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.account_circle_outlined, color: Colors.blue, size: 40.0),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(3),
                    child: Image.asset(
                      'img.png',
                      width: 40.0,
                      height: 40.0,
                    ),
                  ),
                ),
                Text(
                  'Savour Catering Service',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                height: 0.5,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 30.0,),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Row(
                children: [
                  Text("Ratings:", style: TextStyle(color: Colors.white,fontSize: 20.0)),
                  SizedBox(width: 10),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Row(
                children: List.generate(
                  5,
                      (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        _rating = index + 1.0; // Set the rating based on the tapped star
                      });
                    },
                    child: Icon(
                      index < _rating.floor() ? Icons.star : Icons.star_border,
                      color: Colors.grey, size: 35.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50.0,),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 2.0,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                //color : Colors.white,
                child: TextField(
                  controller: name_feedback,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                    labelText: "name*",
                    labelStyle: TextStyle(color: Colors.purpleAccent), // Change the color of the hint text
                  ),
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 30.0,),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Container(
                //height: 150.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 2.0,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                //color : Colors.white,
                child: TextField(
                  maxLines: null,
                  controller: comment_feedback,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 60.0),
                    labelText: "comment*",
                    labelStyle: TextStyle(color: Colors.purpleAccent),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 50.0,),

            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Add your onPressed logic here
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // Button background color
                  onPrimary: Colors.blue, // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0), // Border radius
                  ),
                  minimumSize: Size(450.0, 50.0), // Set width and height
                ),
                child: Text('Submit'), // Button text
              ),
            )


          ],
        ),
      ),
    );
  }
}
