import 'package:clothing_store/assets/colors/colors.dart';
import 'package:clothing_store/assets/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ElevatedButton(
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            SvgIcons.shoppingCart,
            colorFilter: ColorFilter.mode(grey2, BlendMode.srcIn),
          ),
          const SizedBox(width: 8.0),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Add to Cart | \$162.99 ',
                  style: textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: grey2,
                  ),
                ),
                TextSpan(
                  text: '\$190.99',
                  style: textTheme.bodySmall!.copyWith(
                    color: grey2,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
