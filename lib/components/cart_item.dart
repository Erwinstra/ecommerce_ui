import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class CartItem extends StatefulWidget {
  final Shoe shoe;
  const CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void onDelete() {
    Provider.of<Cart>(context, listen: false).removeItem(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(
          widget.shoe.name,
        ),
        subtitle: Text(
          widget.shoe.price,
          style: const TextStyle(color: Colors.green),
        ),
        trailing:
            IconButton(onPressed: onDelete, icon: const Icon(Icons.delete)),
      ),
    );
  }
}
