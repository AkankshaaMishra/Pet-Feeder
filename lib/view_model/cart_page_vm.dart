import 'package:flutter/material.dart';
import 'package:pet_feeder/views/HomePage/designs/product_grid.dart';

class CartPageViewModel with ChangeNotifier {
  List<Product> products = [];
  int totalAmount = 0;

  addProductToCart({required Product product}) {
    totalAmount = 0;
    products.add(product);
    for (Product product in products) {
      totalAmount += product.price;
    }
    notifyListeners();
  }
}
