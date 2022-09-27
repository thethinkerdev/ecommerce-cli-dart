import 'dart:io';

import '../lib/components/AddItem.dart';
import '../lib/components/Checkout.dart';
import '../lib/components/PrintItems.dart';
import '../lib/enum/ways.dart';
import '../lib/models/Cart.dart';
import '../lib/models/Product.dart';
import '../lib/utilities/printTitle.dart';

void main() {
  final cart = Cart();
  while (true) {
    Router(cart);
  }
}

void Router(Cart cart) {
  printTitle("Router");

  stdout.write("(p)rint items\n(a)dd item\n(c)eckout\n--------\nI choose: ");
  final line = stdin.readLineSync() as String;
  final way = ChooseWay(line);

  switch (way.index) {
    case 0:
      {
        PrintItems(cart);
        break;
      }
    case 1:
      {
        Product product = AddItem(cart);
        cart.addItem(product);
        break;
      }
    case 2:
      {
        Checkout(cart);
        break;
      }

    default:
      {
        Router(cart);
        break;
      }
  }
}

Ways ChooseWay(String line) {
  final myWay;
  switch (line) {
    case 'p':
      {
        myWay = Ways.printItems;
        break;
      }
    case 'a':
      {
        myWay = Ways.addItem;
        break;
      }
    case 'c':
      {
        myWay = Ways.checkout;
        break;
      }
    default:
      {
        myWay = Ways.mainSection;
        break;
      }
  }
  return myWay;
}
