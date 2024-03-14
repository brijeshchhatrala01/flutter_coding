import 'package:flutter/material.dart';
import 'package:flutter_coding/CoffeShop/models/coffee.dart';

class CoffeeShop extends ChangeNotifier {
  //coffee for sale list
  final List<Coffee> _shop = [
    Coffee(
        name: "Long Black",
        price: "4.12",
        imagePath: 'images/coffee-latte.png'),
    Coffee(name: "Expresso", price: "6.18", imagePath: 'images/expresso.png'),
    Coffee(
        name: "Hot-Coffee", price: "3.12", imagePath: 'images/hot-coffee.png'),
    Coffee(
        name: "Ice-Coffee", price: "4.12", imagePath: 'images/ice-coffee.png'),
  ];
  //user cart
  final List<Coffee> _userCart = [];

  //get coffee list
  List<Coffee> get coffeShop => _shop;

  //get user cart
  List<Coffee> get userCart => _userCart;

  //add item to cart
  void addItemToCart(Coffee coffee) {
    userCart.add(coffee);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Coffee coffee) {
    userCart.remove(coffee);
    notifyListeners();
  }
}
