import 'package:ecomerce/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            //Logo
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset(
                'asset/logo_1.png',
                height: 240,
              ),
            ),
            const SizedBox(
              height: 48,
            ),

            //The title
            const Text(
              'Just do it!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 24,
            ),

            //The subtitle
            const Text(
              'Brand new sneakers and custom kicks made with premium quality',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(
              height: 48,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const HomePage();
                }));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text('Shop Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        )),
                  ),
                ),
              ),
            )
            //The button
          ]),
        ),
      ),
    );
  }
}
