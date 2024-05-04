import 'package:flutter/material.dart';

import 'package:foodpanda/models/shop.dart';

class ShopCard extends StatelessWidget {
  final Shop shop;

  ShopCard({required this.shop});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(shop.logoPath, height: 50),
          Text(shop.name),
          Text(shop.deliveryTime),
        ],
      ),
    );
  }
}
