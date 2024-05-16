import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // List of shoes for sale
  final List<Shoe> shoes = [
    Shoe(
      name: 'Racer BLUE',
      price: '\$126',
      description: 'Unleash a Wave of Cool Vibes with Our Blue Dunk Shoes',
      imagePath: 'lib/images/blue_dunk.png',
    ),
    Shoe(
      name: 'Grey FOG',
      price: '\$188',
      description: 'Elevate Your Sneaker Game with Every Step!',
      imagePath: 'lib/images/grey_dunk.png',
    ),
    Shoe(
      name: 'Zoom PEGASUS',
      price: '\$232',
      description:
          'Your Ultimate Running Companion for Unmatched Comfort and Speed!',
      imagePath: 'lib/images/pink_running.png',
    ),
    Shoe(
        name: 'Air Force HIGH',
        price: '\$190',
        description:
            'Streamlined Design, Unmatched Versatility, and Timeless Appeal in Every Stride!',
        imagePath: 'lib/images/force_high.png'),
  ];

  // list of items in cart
  List<Shoe> cartItems = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoes;
  }

  // get cart
  List<Shoe> getCart() {
    return cartItems;
  }

  // add items to cart
  void addItem(Shoe shoe) {
    cartItems.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItem(Shoe shoe) {
    cartItems.remove(shoe);
    notifyListeners();
  }
}
