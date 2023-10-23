import 'package:ecomerce/models/shoe.dart';

class Cart {
// list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom Freak',
        price: '280',
        imagePath: 'asset/image/1.jpeg',
        description: ''),
    Shoe(
        name: 'Zoom Freak',
        price: 'price',
        imagePath: 'asset/image/2.jpg',
        description: 'Men' 's shoes'),
    Shoe(
        name: 'Zoom Freak',
        price: 'price',
        imagePath: 'asset/image/3.jpg',
        description: 'Women' 's shoes'),
    Shoe(
        name: 'Zoom Freak',
        price: 'price',
        imagePath: 'asset/image/4.jpg',
        description: 'Men' 's shoes'),
    Shoe(
        name: 'Zoom Freak',
        price: 'price',
        imagePath: 'asset/image/5.jpg',
        description: 'Women' 's shoes'),
    Shoe(
        name: 'Zoom Freak',
        price: 'price',
        imagePath: 'asset/image/6.jpg',
        description: 'Men' 's shoes'),
  ];
  // list of items in user cart
  List<Shoe> userCart = [];
  // get list of shoes for sale
  List<Shoe> getShoelist() {
    return shoeShop;
  }

  // get add items in user cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items in user cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
  }

  // remove items in user cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
  }
}
