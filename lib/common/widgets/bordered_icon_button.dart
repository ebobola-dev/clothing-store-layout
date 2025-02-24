import 'package:clothing_store/assets/colors/colors.dart';
import 'package:flutter/material.dart';

class BorderedIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final Widget icon;
  final Color? backgroundColor;
  final double size;
  const BorderedIconButton({
    super.key,
    required this.onTap,
    required this.icon,
    this.backgroundColor,
    this.size = 40.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: IconButton(
        onPressed: onTap,
        icon: icon,
        padding: EdgeInsets.zero,
        style: IconButton.styleFrom(
          side: BorderSide(color: grey5),
          backgroundColor: backgroundColor,
        ),
      ),
    );
  }
}
