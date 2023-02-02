import 'package:flutter/material.dart';


class CartModel extends ChangeNotifier {

  // list of items on sale
  final List _shopItems = [
    // [ itemName, itemPrice, imagePath, color]
    ['Aguacate', '4.00', 'assets/avocado.png', Colors.green],
    ['Banano', '2.50', 'assets/banana.png', Colors.yellow],
    ['Pollo', '12.80', 'assets/chicken.png', Colors.brown],
    ['Water', '2.00', 'assets/water.png', Colors.blue],
  ];

  // list of cart items
  final List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  //add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }
  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }
  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for(int i = 0; i<cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }

}