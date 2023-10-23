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
          Image.asset(
            shoe.imagePath,
            fit: BoxFit.fitWidth,
            height: 130,
            width: 220,
          ),

          const SizedBox(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  shoe.description,
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 10,
                ),
                //Spacer(),
                // Shoe price
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //The shoe name
                    Column(
                      children: [
                        Text(shoe.name),
                        //The shoe price
                        Text('Price: ' ' \$${shoe.price}'),
                        //The add to cart button
                      ],
                    ),
                    Container(
                        padding: const EdgeInsets.all(20),
                        decoration: const BoxDecoration(
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(12)),
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
