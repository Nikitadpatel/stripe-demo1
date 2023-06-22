import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:stripedemo/paypal.dart';

import 'homescreen.dart';

void main() async {
  //Initialize Flutter Binding
  WidgetsFlutterBinding.ensureInitialized();

  //Assign publishable key to flutter_stripe
  Stripe.publishableKey =
      "pk_test_51Mp3sVH3z9jiRVAKUVXj8vvJW5kM0zV6QXlxZeluYV00wTbxRhsTa9Qe5RCiHTVTEJDqtckmVE1GwLkDkNUeVkZZ004BvHvhbr";

  //Load our .env file that contains our Stripe Secret key


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      //initial route
      home: paypal(),
    );
  }
}
