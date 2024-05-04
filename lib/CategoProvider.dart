import 'package:flutter/material.dart';
import 'package:foodpanda/models/Cuisine.dart';
import 'package:foodpanda/models/brand.dart';
import 'package:foodpanda/models/deal.dart';
import 'package:foodpanda/models/resturant.dart';
import 'package:foodpanda/models/shop.dart';
import 'package:foodpanda/models/food.dart';

class CategoryProvider with ChangeNotifier {
  List<Shop> _shops = [];
  List<Brand> _brands = [];
  List<Deal> _deals = [];
  List<Food> _food = [];
  List<Food> get food => _food;
  List<Cuisine> _cuisines = [];
  List<Cuisine> get cuisines => _cuisines;
  List<RestuarentScreen> _restaurants = [];
  List<RestuarentScreen> get restaurants => _restaurants;

  List<Shop> get shops => _shops;
  List<Brand> get brands => _brands;
  List<Deal> get deals => _deals;
  List<Food> get foods => _food;

  CategoryProvider() {
    loadShops();
    loadBrands();
    loadDeals();
    loadCuisines();
    loadRestaurants();
    loadFood();
  }

  void loadFood() {
    _food = [
      Food(
        title: 'Food delivary',
        subTitle: 'Best deals on your favourites!',
        logoPath: 'assets/FoodDelivary.png',
      ),
      Food(
        title: 'PandaMart',
        subTitle: 'Grocery delivered in 30mins!',
        logoPath: 'assets/panda.png',
      ),
      Food(
        title: 'Pandago',
        subTitle: 'Send Parcels\ninstantly',
        logoPath: 'assets/pandaGo.png',
      ),
      Food(
        title: 'Dine-in',
        subTitle: 'Eat out &\nsave 25%',
        logoPath: 'assets/Dine.png',
      ),
      Food(
        title: 'Pick-up',
        subTitle: 'Takeaway \n in 15 mins',
        logoPath: 'assets/Pickup.png',
      ),
      Food(
        title: 'Shops',
        subTitle: 'Groceries \nand more',
        logoPath: 'assets/shop.png',
      ),
    ];
    notifyListeners();
  }

  void loadRestaurants() {
    _restaurants = [
      RestuarentScreen(
        name: 'Pie In The Sky',
        image: 'assets/piesky.jpg',
        remainingTime: '20 mins',
        subTitle: 'Cakes & Bakery ',
        rating: '4.5',
        deliveryTime: '30-40 mins',
        Price: '\$\$ Pkr 450 ',
        totalRating: '1200+',
        deliveryPrice: '200Pkr',
      ),
      RestuarentScreen(
        name: 'Tooso Bahadurabad',
        image: 'assets/toso.jpg',
        remainingTime: '15 mins',
        subTitle: 'Chinese-Sushi',
        rating: '4.2',
        deliveryTime: '25-35 mins',
        Price: '\$\$ Pkr 290 ',
        totalRating: '900+',
        deliveryPrice: '300Pkr',
      ),
    ];

    notifyListeners();
  }

  void loadShops() {
    _shops = [
      Shop(
          name: 'Pizza track',
          logoPath: 'assets/broadway.png',
          deliveryTime: '35 mins'),
      Shop(
          name: 'Fresh Basket',
          logoPath: 'assets/shell.png',
          deliveryTime: '30 mins'),
      Shop(
          name: 'Pandamort',
          logoPath: 'assets/panda.png',
          deliveryTime: '35 mins'),
      Shop(
          name: 'Almano Tesa',
          logoPath: 'assets/kababjees.jpg',
          deliveryTime: '30 mins'),
      Shop(
          name: 'Fresh Basket',
          logoPath: 'assets/shell.png',
          deliveryTime: '30 mins'),
      Shop(
          name: 'Amaloo',
          logoPath: 'assets/deal1.png',
          deliveryTime: '30 mins'),
    ];
    notifyListeners();
  }

  void loadBrands() {
    _brands = [
      Brand(name: 'OPTP', logoPath: 'assets/otp.jpg', deliveryTime: '30 mins'),
      Brand(
          name: 'Kababjees Bakers',
          logoPath: 'assets/kababjees.jpg',
          deliveryTime: '35 mins'),
      Brand(
          name: 'Baskin Robbin',
          logoPath: 'assets/baskin.jpg',
          deliveryTime: '35 mins'),
      Brand(
          name: 'Pizza Track',
          logoPath: 'assets/broadway.png',
          deliveryTime: '30 mins'),
      Brand(
          name: 'Baskin Robbin',
          logoPath: 'assets/baskin.jpg',
          deliveryTime: '35 mins'),
    ];
    notifyListeners();
  }

  void loadDeals() {
    _deals = [
      Deal(imagePath: 'assets/deal1.png'),
      Deal(imagePath: 'assets/deal2.jpg'),
      Deal(imagePath: 'assets/deal1.jpg'),
    ];
    notifyListeners();
  }

  void loadCuisines() {
    _cuisines = [
      Cuisine(name: 'Pizza', imagePath: 'assets/pizza.jpg'),
      Cuisine(name: 'Paratha', imagePath: 'assets/chicken.jpg'),
      Cuisine(name: 'Shakes', imagePath: 'assets/cake.jpg'),
      Cuisine(name: 'Pakistani', imagePath: 'assets/noddels.jpg'),
      Cuisine(name: 'Sandwich', imagePath: 'assets/burger.jpg'),
      Cuisine(name: 'Burgers', imagePath: 'assets/soup.jpg'),
      Cuisine(name: 'Fast Food', imagePath: 'assets/juice.jpg'),
      Cuisine(name: 'Wraps & Rolls', imagePath: 'assets/kabab.jpg'),
      Cuisine(name: 'Karahi & Handi', imagePath: 'assets/dine.png'),
      Cuisine(name: 'Pasta', imagePath: 'assets/sushi.jpg'),
    ];
    notifyListeners();
  }
}
