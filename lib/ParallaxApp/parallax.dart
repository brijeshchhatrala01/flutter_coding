import 'package:flutter/material.dart';
import 'package:flutter_coding/ParallaxApp/model/location.dart';
import 'package:flutter_coding/ParallaxApp/util/list_item.dart';

class ParallaxApp extends StatelessWidget {
  const ParallaxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (final location in locations)
            LocationItems(imageUrl: location.imageUrl, name: location.name, country: location.place)
        ],
      ),
    );
  }
}
