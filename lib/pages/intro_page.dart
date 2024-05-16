import 'package:flutter/material.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // nike logo image
              Image.asset('lib/images/nike_logo.png'),

              Column(
                children: [
                  // nike catchphrase
                  const Text(
                    'Just Do It',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  // sub title
                  const Text(
                    'Brand new sneakers and custom kicks made with premium quality',
                    style: TextStyle(
                      color: Color.fromARGB(255, 153, 153, 153),
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 25),

                  // button to shop page
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                      ),
                      alignment: Alignment.center,
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      child: const Text(
                        'Shop Now',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
