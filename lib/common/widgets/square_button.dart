import 'package:clothing_store/assets/colors/colors.dart';
import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  final Color? backgroundColor;
  const SquareButton({
    super.key,
    required this.child,
    required this.onTap,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      onPressed: onTap,
      highlightColor: grey2.withValues(alpha: 0.1),
      style: IconButton.styleFrom(
        padding: const EdgeInsets.all(12.0),
        backgroundColor: backgroundColor ?? grey13,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      icon: child,
    );
  }
}
