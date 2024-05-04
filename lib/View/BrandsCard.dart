import 'package:flutter/material.dart';
import 'package:foodpanda/models/brand.dart';

class BrandCard extends StatelessWidget {
  final Brand brand;

  BrandCard({required this.brand});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(brand.logoPath, height: 50),
        Text(
          brand.name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(brand.deliveryTime),
      ],
    );
  }
}
