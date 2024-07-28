import 'package:flutter/material.dart';
import 'package:ui_shoes/suqare_tile/squaretile.dart';

import '../detail_screen/detail_screen.dart';
import '../detail_screen/detail_screen2.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16), // Add padding
            child: Column(
              children: [
                Row(
                  children: [
                    // Menu icon
                    IconButton(
                        onPressed: () {
                          // Handle menu icon tap
                        },
                        icon: const Icon(Icons.menu_rounded),
                        color: Colors.black),
                    const SizedBox(
                      width: 232,
                    ),
                    // Shopping icon
                    IconButton(
                      onPressed: () {
                        // Handle shopping icon tap
                      },
                      icon: const Icon(Icons.shopping_bag_rounded),
                      color: Colors.black,
                    ),
                  ],
                ),
                const SizedBox(
                    height:
                        16), // Add some space between the Row and the search widget

                // Search widget
                TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SquareTile(imagePath: 'lib/assets/adidas.png'),
                    SquareTile(imagePath: 'lib/assets/nike.png'),
                    SquareTile(imagePath: 'lib/assets/bata.png'),
                    SquareTile(imagePath: 'lib/assets/sheakers.png'),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const Text(
                      'Popular',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 205,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.sort),
                    )
                  ],
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailScreen()),
                    );
                  },
                  child: Card(
                    color: Colors.grey.shade100,
                    elevation: 4, // Add elevation for a shadow effect
                    margin: const EdgeInsets.symmetric(
                        vertical: 0), // Add margin for spacing
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Top Row for Price and Favorite Icon
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                '\$250.00', // Replace with actual price
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                // Handle favorite icon tap
                              },
                              icon: const Icon(Icons.favorite_border),
                              color: Colors.black,
                            ),
                          ],
                        ),

                        Container(
                          height: 200, // Adjust height as needed
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'lib/assets/nike1.png'), // Replace with actual image path
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Nike Air Vapormax 2020', // Replace with actual shoe name
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                // Handle shopping icon tap
                              },
                              icon: const Icon(Icons.shopping_bag_outlined),
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailScreen2()),
                    );
                  },
                  child: Card(
                    color: Colors.grey.shade100,
                    elevation: 4, // Add elevation for a shadow effect
                    margin: const EdgeInsets.symmetric(
                        vertical: 0), // Add margin for spacing
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Top Row for Price and Favorite Icon
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                '\$250.00', // Replace with actual price
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                // Handle favorite icon tap
                              },
                              icon: const Icon(Icons.favorite_border),
                              color: Colors.black,
                            ),
                          ],
                        ),

                        Container(
                          height: 200, // Adjust height as needed
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'lib/assets/nike2.png'), // Replace with actual image path
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Nike Dunk High Men 2020', // Replace with actual shoe name
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                // Handle shopping icon tap
                              },
                              icon: const Icon(Icons.shopping_bag_outlined),
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(
                  height: 150,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home_outlined)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_bag_outlined)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.bookmark_border_outlined)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.search)),
          ],
        ),
      ),
    );
  }
}
