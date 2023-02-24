import 'package:didan_pos/pages/home_page.dart';
import 'package:didan_pos/pages/login.dart';
import 'package:didan_pos/pages/order_page.dart';
import 'package:didan_pos/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        routes: {
          "/": (context) => MyHomePage(),
          MyRouter.loginRoute: (context) => LoginPage(),
          // MyRouter.cartPage: (context) => CartPage(),
          MyRouter.homeRoute: (context) => MyHomePage(),
          MyRouter.orderRoute: (context) => OrderPage(),
        });
  }
}
