class Product {
  int _id;
  String _name;
  double _price;
  List<Product> _products = [];

  Product({
    required int id,
    required String name,
    required double price,
  })  : _id = id,
        _name = name,
        _price = price;

  String get getName => this._name;
  double get getPrice => this._price;
  addItem(Product product) => this._products.add(product);
  // List<Product> get getItems => this._products;
}
