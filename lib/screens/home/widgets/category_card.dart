import 'package:clothing_store/assets/colors/colors.dart';
import 'package:clothing_store/models/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryCard extends StatelessWidget {
  final Categories category;
  final VoidCallback onTap;
  final bool isActive;

  const CategoryCard({
    super.key,
    required this.category,
    required this.onTap,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    final activeColor = grey2;
    final inactiveColor = grey13;
    final inactiveStyle = Theme.of(context).textTheme.headlineSmall;
    final activeStyle = inactiveStyle!.copyWith(color: activeColor);

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        color: isActive ? grey13 : Colors.transparent,
        borderRadius: BorderRadius.circular(8.0),
        border: isActive ? null : Border.all(color: grey5),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(8.0),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: Row(
              children: [
                SvgPicture.asset(
                  category.iconPath,
                  colorFilter: ColorFilter.mode(
                    isActive ? activeColor : inactiveColor,
                    BlendMode.srcIn,
                  ),
                ),
                const SizedBox(width: 4.0),
                Text(
                  category.name,
                  style: isActive ? activeStyle : inactiveStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
