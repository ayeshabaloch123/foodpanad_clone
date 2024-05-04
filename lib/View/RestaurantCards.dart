import 'package:flutter/material.dart';

import 'package:foodpanda/models/resturant.dart';

class RestaurantCard extends StatelessWidget {
  final RestuarentScreen restaurant;

  RestaurantCard({required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          child: Column(
            children: [
              Image.asset(
                restaurant.image,
                height: 140,
                width: 150,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurant.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text('Delivery Time: ${restaurant.deliveryTime}'),
                    Text('Rating: ${restaurant.rating}'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
