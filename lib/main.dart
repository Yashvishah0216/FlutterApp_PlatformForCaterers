



import 'package:capstone/caterregister.dart';
import 'package:capstone/payment.dart';
import 'package:flutter/material.dart';
import 'package:capstone/login.dart';
import 'package:capstone/fp.dart';
import 'package:capstone/otp.dart';
import 'package:capstone/reset.dart';
import 'package:capstone/home.dart';
import 'package:capstone/home2.dart';
import 'package:capstone/homepage.dart';
import 'package:capstone/savourcater.dart';
import 'package:capstone/sugar.dart';
import 'package:capstone/default1.dart';
import 'package:capstone/meal.dart';
import 'package:capstone/meal_type_page.dart';
import 'package:capstone/meal_plan.dart';
import 'package:capstone/user.dart';
import 'package:capstone/meal_day.dart';
import 'package:capstone/top_dish.dart';
import 'package:capstone/rice.dart';
import 'package:capstone/roti.dart';
import 'package:capstone/starters.dart';
import 'package:capstone/sabji.dart';
import 'package:capstone/dessert.dart';
import 'package:capstone/cart.dart';
import 'package:capstone/checkout.dart';
import 'package:capstone/subscription.dart';
import 'package:capstone/craft.dart';
import 'package:capstone/registration_button.dart';
import 'package:capstone/customerregister.dart';
import 'company_menu_list.dart';
import 'fake.dart';
import 'feedback.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'homepage',
    routes: {
      'login': (context) => LoginPage(),
      //'register': (context) => RegisterPage(),
      'fp': (context) => ForgotPage(),
      'otp': (context) => OtpPage(),
      'reset': (context) => ResetPage(),
      'home': (context) => HomePage(),
      'home2': (context) => CatererList(),
      'homepage': (context) => Splashscreen(),
      'savourcater': (context) => SavourPage(),
      'sugar': (context) => SugarPage(),
      'default1': (context) => DefaultPage(),
      'meal': (context) => MainMealPage(),
      'meal_type_page': (context) => mealTypePage(),
      'meal_plan': (context) => PlanPage(),
      'user': (context) => AccountPage(),
      'meal_day': (context) => MealDay(),
      'top_dish': (context) => ChoicePage(),
      'rice': (context) => RicePage(),
      'roti': (context) => RotiPage(),
      'starters': (context) => StarterPage(),
      'sabji': (context) => SabjiPage(),
      'dessert': (context) => DessertPage(),
      'add_item': (context) => CartPage(),
      'checkout': (context) => CheckoutPage(),
      'subscription': (context) => SubscriptionPage(),
      'craft': (context) => CraftPage(),
      'registration_button': (context) => RegisterButton(),
      'caterregister': (context) => RegisterPage(),
      'customerregister': (context) => CustomerRegisterPage(),
      'feedback': (context) => FeedbackPage(),
      'payment': (context) => PaymentPage(),
      'company_menu_list': (context) => CatererMenuList(catererId: '',),
      'fake': (context) => MyCartApp(),
    },
  ));
}
