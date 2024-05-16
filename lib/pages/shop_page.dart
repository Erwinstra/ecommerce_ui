import 'package:provider/provider.dart';
import '../components/shoe_tile.dart';
import 'package:flutter/material.dart';

import '../models/cart.dart';

class ShopPage extends StatefulWidget {
  ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(shoe) {
    Provider.of<Cart>(context, listen: false).addItem(shoe);

    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Text('Successfully added!'),
          content: Text('Check your cart'),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) {
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 235, 238, 238),
          body: Column(
            children: [
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(15),
                color: Colors.white,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Search',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Icon(Icons.search, color: Colors.grey),
                  ],
                ),
              ),
              const Text(
                'Your perfect pair is just a tap away with Us..',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color.fromARGB(255, 137, 137, 137)),
              ),
              const Padding(
                padding:
                    EdgeInsets.only(bottom: 10, left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Most Favorites',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.favorite, color: Colors.red),
                      ],
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    var shoe = value.getShoeList()[index];

                    return ShoeTile(
                      shoe: shoe,
                      onTap: () => addShoeToCart(shoe),
                    );
                  },
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        );
      },
    );
  }
}
