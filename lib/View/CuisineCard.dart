import 'package:flutter/material.dart';
import 'package:foodpanda/models/Cuisine.dart';

class CuisineCard extends StatelessWidget {
  final Cuisine cuisine;

  CuisineCard({required this.cuisine});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Image.asset(cuisine.imagePath, fit: BoxFit.cover)),
        Text(cuisine.name),
      ],
    );
  }
}
