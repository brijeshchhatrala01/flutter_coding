import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_coding/CoffeShop/components/coffee_tile.dart';
import 'package:flutter_coding/CoffeShop/models/coffee.dart';
import 'package:flutter_coding/CoffeShop/models/coffee_shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //add to cart
  void addToCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).addItemToCart(coffee);
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text("Successfully Added To Cart!"),
      ),
    ); 
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    const Text(
                      'How would you like your coffee?',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Expanded(
                        child: ListView.builder(
                      itemCount: value.coffeShop.length,
                      itemBuilder: (context, index) {
                        Coffee eachCoffee = value.coffeShop[index];
                        return CoffeeTile(
                          coffee: eachCoffee,
                          onPressed: () => addToCart(eachCoffee),
                          icon: const Icon(Icons.add),
                        );
                      },
                    ))
                  ],
                ),
              ),
            ));
  }
}
