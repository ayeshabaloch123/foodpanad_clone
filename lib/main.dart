import 'package:flutter/material.dart';
import 'package:foodpanda/CategoProvider.dart';
import 'package:foodpanda/Screens/HomePage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CategoryProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodpanda Clone',
      home: HomePage(),
    );
  }
}
