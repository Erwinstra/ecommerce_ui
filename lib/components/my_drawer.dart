import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 20,
          right: 20,
          bottom: 30,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Image.asset(
                  'lib/images/nike_logo.png',
                  color: Colors.white,
                  width: 150,
                ),
                const SizedBox(height: 70),
                const ListTile(
                  leading: Icon(Icons.home, color: Colors.white),
                  title: Text('Home', style: TextStyle(color: Colors.white)),
                ),
                const ListTile(
                  leading: Icon(Icons.info, color: Colors.white),
                  title: Text('About', style: TextStyle(color: Colors.white)),
                ),
                const ListTile(
                  leading: Icon(Icons.settings, color: Colors.white),
                  title: Text('Setting', style: TextStyle(color: Colors.white)),
                )
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: const ListTile(
                leading: Icon(Icons.logout, color: Colors.white),
                title: Text('Logout', style: TextStyle(color: Colors.white)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
