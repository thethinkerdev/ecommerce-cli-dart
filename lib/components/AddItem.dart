import 'dart:ffi';
import 'dart:io';

import '../data/allProducts.dart';
import '../models/Cart.dart';
import '../models/Product.dart';
import '../utilities/printTitle.dart';

Product AddItem(Cart cart) {
  printTitle("Add Product");

  for (Product item in allProducts) {
    String title = item.getName;
    String customizedTitle = title.replaceFirst(title[0], "");

    stdout.writeln("(${title[0]})$customizedTitle");
  }
  stdout.writeln("I choose: ");
  final line = stdin.readLineSync();
  final productToAdd = chooseProduct(line as String);

  return productToAdd;
}

Product chooseProduct(String char) => allProducts.where((product) {
      return product.getName[0] == char;
    }).first;
