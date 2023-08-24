import '../models/product_model.dart';

abstract class ProductRepository {
  static final List<ProductModel> _products = [
    ProductModel(
        image: "watch1.jpeg", name: "Watch1", inCart: false, price: "55\$"),
    ProductModel(
        image: "watch2.jpeg", name: "Watch2", inCart: false, price: "66\$"),
    ProductModel(
        image: "watch3.jpeg", name: "Watch3", inCart: false, price: "44\$"),
    ProductModel(
        image: "watch4.jpeg", name: "Watch4", inCart: false, price: "77\$"),
    ProductModel(
        image: "watch5.jpeg", name: "Watch5", inCart: false, price: "33\$"),
  ];

  static List<ProductModel> get products {
    return _products;
  }

  static List<ProductModel> get cartProducts {
    return _products.where((element) => element.inCart).toList();
  }
}
