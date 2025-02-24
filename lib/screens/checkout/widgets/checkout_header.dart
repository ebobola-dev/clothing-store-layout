import 'package:clothing_store/assets/resources/resources.dart';
import 'package:clothing_store/common/widgets/bordered_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckoutHeader extends StatelessWidget {
  const CheckoutHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BorderedIconButton(
            onTap: () => Navigator.pop(context),
            icon: SvgPicture.asset(SvgIcons.arrowLeft),
          ),
          Text(
            'Checkout',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          BorderedIconButton(
            onTap: () {},
            icon: SvgPicture.asset(SvgIcons.menu),
          ),
        ],
      ),
    );
  }
}
