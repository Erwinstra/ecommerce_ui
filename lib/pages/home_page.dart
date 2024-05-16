import 'package:ecommerce_ui/components/my_drawer.dart';
import 'package:ecommerce_ui/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedIndex = 0;

  final _pages = <Widget>[ShopPage(), const CartPage()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 235, 238, 238),
        // backgroundColor: const Color(0xFF394867),
        // title: const Text(
        //   'Shop App',
        //   style: TextStyle(color: Colors.white),
        // ),
        // centerTitle: true,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Cart',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: const Color(0xFF394867),
      ),
      drawer: const Drawer(
        backgroundColor: Color(0xFF212A3E),
        child: MyDrawer(),
      ),
    );
  }
}
