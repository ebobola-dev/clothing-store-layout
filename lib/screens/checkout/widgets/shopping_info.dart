import 'package:clothing_store/screens/checkout/widgets/cards_widget.dart';
import 'package:flutter/material.dart';

class ShoppingInfo extends StatelessWidget {
  const ShoppingInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Shipping Information',
          style: textTheme.titleMedium,
        ),
        const SizedBox(height: 16.0),
        CardsWidget(),
        const SizedBox(height: 24.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total (9 items)',
              style: textTheme.bodyLarge,
            ),
            Text(
              '\$1,014.95',
              style: textTheme.displayMedium,
            ),
          ],
        ),
        const SizedBox(height: 12.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Shipping Fee',
              style: textTheme.bodyLarge,
            ),
            Text(
              '\$0.00',
              style: textTheme.displayMedium,
            ),
          ],
        ),
        const SizedBox(height: 12.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Discount',
              style: textTheme.bodyLarge,
            ),
            Text(
              '\$0.00',
              style: textTheme.displayMedium,
            ),
          ],
        ),
        const SizedBox(height: 16.0),
        Divider(),
        const SizedBox(height: 24.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Sub Total',
              style: textTheme.bodyLarge,
            ),
            Text(
              '\$1,014.95',
              style: textTheme.displayMedium,
            ),
          ],
        ),
        const SizedBox(height: 24.0),
      ],
    );
  }
}
