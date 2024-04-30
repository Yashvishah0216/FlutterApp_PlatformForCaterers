import 'package:flutter/material.dart';

class mealTypePage extends StatefulWidget {
  const mealTypePage({super.key});

  @override
  State<mealTypePage> createState() => _mealTypePageState();
}

class _mealTypePageState extends State<mealTypePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12.0, 10, 16.0, 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
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
                          fontSize: 22.0, color: Color(0xFF8A96FA)),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
          
                    },
                    icon: Icon(
                        Icons.account_circle_outlined, color: Colors.blue,
                        size: 40.0),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 10,bottom:5),
                child: Text("Available Meals",style: TextStyle(color: Colors.white),),
              ),
              SizedBox(height: 20.0),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Breakfast",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFF902EF),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: ElevatedButton(
                            onPressed: () {
          
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 2,horizontal: 30),
                              primary: Colors.white, // Button background color
                              onPrimary: Colors.black, // Text color
                              side: BorderSide(color: Color(0xFFF902EF), width: 1.5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                            child: Text("Order"),
                          ),
                        ),
                      ],
                    ),
          
                    SizedBox(height: 10),
                    Stack(
                      children: [
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Masala Dosa = 1 qnt\n"
                                "Idli Sambar = 2 piece\n"
                                "Poha = 150g\n"
                                "Upma = 150g\n"
                                "Aloo Paratha = 2 piece",
                            style: TextStyle(fontSize: 13, color: Colors.black),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 10,
                            child: Text(
                              "Rs. 200",
                              style: TextStyle(fontSize: 13, color: Colors.black),
                            ),
                          )],
                      ),]
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Lunch",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFA726C7),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'cart');
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 2,horizontal: 30),
                              primary: Colors.white, // Button background color
                              onPrimary: Colors.black, // Text color
                              side: BorderSide(color: Color(0xFFA726C7), width: 1.5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                            child: Text("Order"),
                          ),
                        ),
                      ],
                    ),
          
                    SizedBox(height: 10),
                    Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Paneer Butter Masala - 200g\n"
                                    "Dal Tadka\n"
                                    "Rice\n"
                                    "Bhindi Masala - 200g\n"
                                    "Roti - 5pc\n"
                                    "Sweet - 2pc Gulab Jamun\n"
                                    "Drink - Chaas 1 glass",
                                style: TextStyle(fontSize: 13, color: Colors.black),
                              ),
                              Positioned(
                                bottom: 10,
                                right: 10,
                                child: Text(
                                  "Rs. 300",
                                  style: TextStyle(fontSize: 13, color: Colors.black),
                                ),
                              )],
                          ),]
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Dinner",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFF902EF),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: ElevatedButton(
                            onPressed: () {
                            Navigator.pushNamed(context, 'cart');
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 2,horizontal: 30),
                              primary: Colors.white, // Button background color
                              onPrimary: Colors.black, // Text color
                              side: BorderSide(color: Color(0xFFF902EF), width: 1.5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                            child: Text("Order"),
                          ),
                        ),
                      ],
                    ),
          
                    SizedBox(height: 10),
                    Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Aloo Paratha with Raita - 1pc\n"
                                    "Vegetable Biryani - 200g\n"
                                    "Gobi Manchurian - 8pc\n"
                                    "Baingan Bharta - 200g\n"
                                    "Roti -  2pc\n"
                                    "Gajar ka Halwa - 100g",
                                style: TextStyle(fontSize: 13, color: Colors.black),
                              ),
                              Positioned(
                                bottom: 10,
                                right: 10,
                                child: Text(
                                  "Rs. 400",
                                  style: TextStyle(fontSize: 13, color: Colors.black),
                                ),
                              )],
                          ),]
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
