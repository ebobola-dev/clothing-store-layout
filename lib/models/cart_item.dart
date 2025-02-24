import 'package:clothing_store/models/product.dart';

class CartItem {
  final Product product;
  final int quantity;

  const CartItem({required this.product, required this.quantity});
}

final cartItemList = [
  CartItem(
    product: products[0],
    quantity: 4,
  ),
  CartItem(
    product: products[1],
    quantity: 1,
  ),
];
