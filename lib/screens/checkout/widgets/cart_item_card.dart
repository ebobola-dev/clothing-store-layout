import 'package:clothing_store/assets/resources/resources.dart';
import 'package:clothing_store/common/widgets/bordered_icon_button.dart';
import 'package:clothing_store/models/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartItemCard extends StatelessWidget {
  final CartItem cartItem;
  const CartItemCard({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        SizedBox(
          height: 70.0,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(14.0),
                child: Image.asset(
                  width: 70.0,
                  cartItem.product.imagePath,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 15.0),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cartItem.product.name,
                          style: textTheme.titleMedium,
                        ),
                        const SizedBox(height: 4.0),
                        Text(
                          cartItem.product.type,
                          style: textTheme.bodySmall,
                        ),
                        const Spacer(),
                        Text(
                          '\$${cartItem.product.price}',
                          style: textTheme.titleSmall,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 24.0,
                          height: 24.0,
                          child: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(SvgIcons.dotsMenu),
                            padding: EdgeInsets.zero,
                          ),
                        ),
                        Row(
                          children: [
                            BorderedIconButton(
                              onTap: () {},
                              size: 24.0,
                              icon: SvgPicture.asset(
                                SvgIcons.minus,
                                width: 16.0,
                              ),
                            ),
                            const SizedBox(width: 12.0),
                            Text(
                              cartItem.quantity.toString(),
                              style: textTheme.headlineLarge,
                            ),
                            const SizedBox(width: 12.0),
                            BorderedIconButton(
                              onTap: () {},
                              size: 24.0,
                              icon: SvgPicture.asset(
                                SvgIcons.add,
                                width: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24.0),
        Divider(),
      ],
    );
  }
}
