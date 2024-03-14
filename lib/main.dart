import 'package:flutter/material.dart';
import 'package:flutter_coding/CoffeShop/models/coffee_shop.dart';
import 'package:flutter_coding/CoffeShop/pages/homepage.dart';
import 'package:flutter_coding/ParallaxApp/parallax.dart';
import 'package:flutter_coding/RadioTheme/radioTheme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return ChangeNotifierProvider(
    //   create: (context) => CoffeeShop(),
    //   builder: (context, child) => const MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: HomePage(),
    //   ),
    // );
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange)),
        // home: const Scaffold(
        //   body: Center(
        //     child: ParallaxApp(),
        //   ),
        // ),
        home: RadioThemePage());
  }
}
