import 'package:flutter/material.dart';
import 'package:foodpanda/models/deal.dart';

class DealCard extends StatelessWidget {
  final Deal deal;

  DealCard({required this.deal});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(deal.imagePath, height: 150),
      ],
    );
  }
}
