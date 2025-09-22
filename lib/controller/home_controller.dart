// lib/controllers/home_controller.dart
import '../models/product_model.dart';

class HomeController {
  List<Product> getProducts() {
    return [
      Product(title: "Bottle 1", image: "assets/three_bottles.png"),
    ];
  }
}
