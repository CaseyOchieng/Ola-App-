import 'package:ecomerce/components/shoe_tile.dart';
import 'package:ecomerce/models/cart.dart';
import 'package:ecomerce/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) {
        return Column(
          children: [
            // The search bar
            Container(
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Search"),
                  Icon(Icons.search),
                ],
              ),
            ),

            //The message
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: Text('everyone flies.. some fly longer than other ',
                  style: TextStyle(
                    color: Colors.grey[600],
                  )),
            ),

            //Hot Picks
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Hot Picks 🔥',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            SizedBox(
                height: 250,
                child: ListView.builder(
                  itemCount: 10,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    Shoe shoe = Shoe(
                        name: "Air-Jordan",
                        price: "240",
                        imagePath: "asset/image/3.jpg",
                        description: "Men' 's shoes");
                    return ShoeTile(
                      shoe: shoe,
                    );
                  },
                )),
            const Padding(
              padding: EdgeInsets.only(
                top: 25,
                left: 25,
                right: 25,
              ),
              child: Divider(color: Colors.grey),
            ),
          ],
        );
      },
    );
  }
}
