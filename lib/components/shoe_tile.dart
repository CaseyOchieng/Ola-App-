// ignore_for_file: must_be_immutable

import 'package:ecomerce/models/shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.only(left: 25),
      width: 220,
      height: 230,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // shoe pic
          ClipRRect(
            child: Image.asset(
              shoe.imagePath,
              fit: BoxFit.fill,
              height: 134,
              width: 220,
              alignment: Alignment.topCenter,
            ),
          ),

          const SizedBox(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(
                  height: 4,
                ),
                Text(
                  shoe.name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 22,
                ),
                // Shoe price
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //The shoe name
                    Column(
                      children: [
                        Text('Price: ' ' \$${shoe.price}'),
                        const SizedBox(
                          height: 3,
                        ),
                        //The add to cart button
                        Text(shoe.description),
                        //The shoe price
                      ],
                    ),
                    Container(
                        margin: const EdgeInsets.only(
                          right: 0,
                          bottom: 4,
                        ),
                        padding: const EdgeInsets.all(20),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                          color: Colors.black,
                        ),
                        child: const Icon(
                          Icons.add_shopping_cart,
                          color: Colors.white,
                        )),
                  ],
                )
              ],
            ),
          ),
          // Shoe description
        ],
      ),
    );
  }
}
