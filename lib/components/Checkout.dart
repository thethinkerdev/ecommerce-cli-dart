import 'dart:io';

import '../models/Cart.dart';
import '../utilities/printTitle.dart';

void Checkout(Cart cart) {
  printTitle("Checkout");

  stdout.writeln("Total Price: \$${cart.getTotalPrice()}");

  stdout.writeln("How much money do you have: ");
  String line = stdin.readLineSync() as String;

  double price = double.parse(line);

  if (price >= cart.getTotalPrice()) {
    //remove items
    cart.clearCart();
  } else {
    stdout.writeln("not enough money");
  }
}
