import 'package:aegean_mobile/models/food.dart';

class CartItem {
  Food food;
  int quantity;

  CartItem({required this.food, required this.quantity});

  double get totalPrice => quantity * food.price;
}
