import 'package:clothing_store/models/cart_item.dart';
import 'package:clothing_store/screens/checkout/widgets/cart_item_card.dart';
import 'package:flutter/material.dart';

class CartItemList extends StatelessWidget {
  const CartItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: cartItemList.length,
      separatorBuilder: (context, _) => SizedBox(height: 24.0),
      itemBuilder: (context, index) => CartItemCard(
        cartItem: cartItemList[index],
      ),
    );
  }
}
