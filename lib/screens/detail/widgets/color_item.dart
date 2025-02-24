import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  final Color color;
  final VoidCallback onTap;
  final bool isActive;
  const ColorItem({
    super.key,
    required this.color,
    required this.onTap,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: 26.0,
            height: 26.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
          ),
        ),
        AnimatedPositioned(
          duration: const Duration(milliseconds: 150),
          curve: Curves.easeInOut,
          bottom: isActive ? -8.0 : 1.0,
          left: 26 * 0.5 - 3.0,
          child: Container(
            width: 6.0,
            height: 6.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
