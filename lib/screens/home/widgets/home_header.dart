import 'package:clothing_store/assets/resources/resources.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, Welcome 👋',
              style: textTheme.bodyMedium,
            ),
            const SizedBox(height: 4.0),
            Text(
              'Albert Stevano',
              style: textTheme.headlineLarge,
            ),
          ],
        ),
        ClipOval(
          child: Image.asset(
            Images.profile,
            width: 32.0,
          ),
        ),
      ],
    );
  }
}
