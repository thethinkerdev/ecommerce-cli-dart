import 'Product.dart';

class Cart {
  List<Product> _products = [];

  addItem(Product product) => this._products.add(product);
  List<Product> get getItems => this._products;

  double getTotalPrice() {
    double totalPrice = 0;
    for (final product in this._products) {
      totalPrice += product.getPrice;
    }

    return totalPrice;
  }

  void clearCart() {
    this._products.clear();
  }
}
