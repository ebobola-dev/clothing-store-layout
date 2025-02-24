import 'package:clothing_store/screens/checkout/widgets/cart_item_list.dart';
import 'package:clothing_store/screens/checkout/widgets/checkout_header.dart';
import 'package:clothing_store/screens/checkout/widgets/pay_button.dart';
import 'package:clothing_store/screens/checkout/widgets/shopping_info.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CheckoutHeader(),
                      const SizedBox(height: 24.0),
                      CartItemList(),
                      const SizedBox(height: 18.0),
                      ShoppingInfo(),
                    ],
                  ),
                ),
              ),
              PayButton(),
            ],
          ),
        ),
      ),
    );
  }
}
