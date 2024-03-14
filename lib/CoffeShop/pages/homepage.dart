import 'package:flutter/material.dart';
import 'package:flutter_coding/CoffeShop/components/bottom_nav_bar.dart';
import 'package:flutter_coding/CoffeShop/const.dart';
import 'package:flutter_coding/CoffeShop/pages/cart_page.dart';
import 'package:flutter_coding/CoffeShop/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => _navigateBottomBar(index),
      ),
      body: pages[_selectedIndex],
    );
  }
}
