import 'dart:io';

import '../models/Cart.dart';
import '../utilities/loading.dart';
import '../utilities/printTitle.dart';

void PrintItems(Cart cart) {
  printTitle("Inside Of Your Cart");

  if (cart.getItems.isEmpty) {
    stdout.writeln("cart is empty...");
  } else {
    for (final product in cart.getItems) {
      stdout.writeln("-> ${product.getName}");
      stdout.writeln("\$${product.getPrice}");
    }
    //total:
    stdout.writeln("Total Price: \$${cart.getTotalPrice()}");
  }
  loading(seconds: 2);
}
