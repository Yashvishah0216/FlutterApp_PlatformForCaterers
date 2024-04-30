import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'cart.dart'; // Assuming you have a CartPage class that holds the cart items

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  TextEditingController _numberOfPersonsController = TextEditingController();
  TextEditingController _deliveryAddressController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  DateTime _selectedDate = DateTime.now();

  double platformFeesPercentage = 0.1;
  double cateringCharge = 2000;
  double totalBill = 0.0;
  double finalBill = 0.0;
  bool isFinalBillCalculated = false;

  @override
  void initState() {
    super.initState();
    // Calculate total bill when the page initializes
    calculateTotalBill();
  }

  void calculateTotalBill() {
    double total = 0;
    for (var item in CartPage.cartItems) {
      total += double.parse(item['PRICE']);
    }
    // Add catering charge to the total bill
    total += cateringCharge;
    // Add platform fees
    total += total * platformFeesPercentage;
    setState(() {
      totalBill = total;
    });
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2022),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
      });
  }

  void calculateFinalBill() {
    // Multiply the total bill by the number of persons
    finalBill = totalBill * int.parse(_numberOfPersonsController.text);
    setState(() {
      isFinalBillCalculated = true;
    });
  }

  Future<void> placeOrder() async {
    // Extract MENU_ID and CATERER_ID from cart items
    List<Map<String, dynamic>> orderItems = [];
    for (var item in CartPage.cartItems) {
      orderItems.add({
        'MENU_ID': item['MENU_ID'],
        'CATERER_ID': item['CATERER_ID'],
        'ITEM_NAME': item['ITEM_NAME'],
      });
    }

    // Send data to server
    final response = await http.post(
      Uri.parse('http://192.168.181.150/CaterCollab_AdminPanel/order_api.php'),
      // Replace with your server URL
      body: {
        'order_items': json.encode(orderItems),
        'quantity': _numberOfPersonsController.text,
        'total_amount': finalBill.toString(),
        'delivery_date_time': _selectedDate.toString(),
        'delivery_location': _deliveryAddressController.text,
      },
    );

    // Check if request was successful
    if (response.statusCode == 200) {
      // Order placed successfully
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Order placed successfully'),
      ));
    } else {
      // Error occurred
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Failed to place order. Please try again later.'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 17.0, 10.0, 10.0),
        child: Column(
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
                        colors: [Colors.blue, Colors.purple],
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
                    style: TextStyle(fontSize: 22.0, color: Color(0xFF8A96FA)),
                  ),
                ),
                Image.asset(
                  'assets/logooo.png',
                  height: 60,
                  width: 80,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              style: TextStyle(color: Colors.white),
              controller: _numberOfPersonsController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter Number of Persons',
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              style: TextStyle(color: Colors.white),
              controller: _deliveryAddressController,
              decoration: InputDecoration(
                labelText: 'Delivery Address',
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              style: TextStyle(color: Colors.white),
              controller: _phoneNumberController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Phone Number',
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 16.0),
            GestureDetector(
              onTap: () => _selectDate(context),
              child: AbsorbPointer(
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: TextEditingController(
                      text:
                          '${_selectedDate.year}-${_selectedDate.month}-${_selectedDate.day}'),
                  decoration: InputDecoration(
                    labelText: 'Date',
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                calculateFinalBill();
              },
              child: Text('Submit'),
            ),
            SizedBox(height: 5.0),
            Text(
              'Your Platter:',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            //SizedBox(height: ),
            Expanded(
              child: ListView.builder(
                itemCount: CartPage.cartItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      title: Text(
                        CartPage.cartItems[index]['ITEM_NAME'],
                        style: TextStyle(color: Colors.indigo),
                      ),
                      subtitle: Text(
                        'Rs.${CartPage.cartItems[index]['PRICE']}',
                        style: TextStyle(color: Colors.indigo),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Catering Charge: Rs.${cateringCharge.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
            SizedBox(height: 2.0),
            Text(
              'Platform Fees: Rs.${(totalBill * platformFeesPercentage).toStringAsFixed(2)}',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
            SizedBox(height: 2.0),
            Text(
              'Total Amount: Rs.${totalBill.toStringAsFixed(2)}',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            if (isFinalBillCalculated) ...[
              SizedBox(height: 5.0),
              Text(
                'Final Amount: Rs.${finalBill.toStringAsFixed(2)}',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 5.0),
              ElevatedButton(
                onPressed: () {
                  placeOrder();
                },
                child: Text('Pay Here'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
