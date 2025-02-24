import 'package:clothing_store/assets/colors/colors.dart';
import 'package:clothing_store/common/widgets/bordered_icon_button.dart';
import 'package:flutter/material.dart';

class SizeItem extends StatelessWidget {
  final String sizeName;
  final VoidCallback onTap;
  final bool isActive;
  const SizeItem({
    super.key,
    required this.sizeName,
    required this.onTap,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.bodyMedium;
    final activeTextStyle = textStyle!.copyWith(
      color: grey2,
      fontWeight: FontWeight.bold,
    );

    return SizedBox(
      width: 26.0,
      height: 26.0,
      child: isActive
          ? IconButton(
              onPressed: onTap,
              padding: EdgeInsets.zero,
              style: IconButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
              ),
              icon: Text(
                sizeName,
                style: activeTextStyle,
              ),
            )
          : BorderedIconButton(
              onTap: onTap,
              icon: Text(
                sizeName,
                style: textStyle,
              ),
            ),
    );
  }
}
