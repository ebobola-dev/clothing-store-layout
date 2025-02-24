import 'package:clothing_store/assets/colors/colors.dart';
import 'package:flutter/material.dart';

class PayButton extends StatelessWidget {
  const PayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          'Pay',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: grey2,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
