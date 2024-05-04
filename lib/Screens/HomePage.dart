import 'package:flutter/material.dart';
import 'package:foodpanda/CategoProvider.dart';
import 'package:foodpanda/View/BrandsCard.dart';
import 'package:foodpanda/View/CuisineCard.dart';
import 'package:foodpanda/View/TopCards.dart';
import 'package:provider/provider.dart';
import '../View/CategoryCard.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categoryProvider = Provider.of<CategoryProvider>(context);
    final double screenWidth = MediaQuery.of(context).size.width;
    categoryProvider.loadFood();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120.0),
        child: AppBar(
          backgroundColor: Colors.pink,
          iconTheme: IconThemeData(color: Colors.white),
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Alcobond USA Pakistan',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: '',
                    ),
                  ),
                ],
              ),
              Text(
                'Karachi',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontFamily: '',
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_bag_outlined, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border, color: Colors.white),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(10),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: CupertinoTextField(
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                      placeholder: "Search for shops & restaurants",
                      prefix: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.search,
                          color: Color(0xff7b7b7b),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xfff7f7f7),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      style: const TextStyle(
                        color: Color(0xff707070),
                        fontSize: 12,
                        fontFamily: 'Regular',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 170,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) {
                  final food = categoryProvider.food[index];
                  return Container(
                    child: SizedBox(
                      width: 210,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: FoodCard(food: food),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 210,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 90,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              final food = categoryProvider.food[index + 2];
                              return Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: SizedBox(
                                  width: 200,
                                  child: FoodCard(food: food),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 90,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              final food = categoryProvider.food[index + 4];
                              return Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: SizedBox(
                                  width: 200,
                                  child: FoodCard(food: food),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                'Order it again',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: screenWidth * 0.7,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoryProvider.restaurants.length,
                itemBuilder: (context, index) {
                  final restaurant = categoryProvider.restaurants[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              restaurant.image,
                              height: screenWidth * 0.5,
                              width: screenWidth * 0.5,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              restaurant.name,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.star, color: Colors.orange),
                            SizedBox(width: 4),
                            Text(
                              '${restaurant.rating} (${restaurant.totalRating})',
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '${restaurant.Price} ',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              restaurant.subTitle,
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.access_time,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 4),
                            Text(
                              '${restaurant.deliveryTime}',
                              style: TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            const Icon(
                              Icons.moped,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 4),
                            Text(
                              '${restaurant.deliveryPrice}',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                'Top Brands',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoryProvider.brands.length,
                itemBuilder: (context, index) {
                  final brand = categoryProvider.brands[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BrandCard(brand: brand),
                  );
                },
              ),
            ),
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Your Daily Deals',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoryProvider.deals.length,
                itemBuilder: (context, index) {
                  final deal = categoryProvider.deals[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DealCard(deal: deal),
                  );
                },
              ),
            ),
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Cuisines',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: (categoryProvider.cuisines.length / 2).ceil(),
                    itemBuilder: (context, index) {
                      final cuisine = categoryProvider.cuisines[index];
                      return Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: CuisineCard(cuisine: cuisine),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: (categoryProvider.cuisines.length / 2).floor(),
                    itemBuilder: (context, index) {
                      final cuisine = categoryProvider.cuisines[index +
                          (categoryProvider.cuisines.length / 2).ceil()];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CuisineCard(cuisine: cuisine),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
