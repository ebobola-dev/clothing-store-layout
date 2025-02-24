import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  final bool isActive;
  const NavBarItem({
    super.key,
    required this.child,
    required this.onTap,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        IconButton.filled(
          onPressed: onTap,
          style: IconButton.styleFrom(
            backgroundColor: Colors.white.withAlpha(5),
          ),
          icon: child,
        ),
        if (isActive)
          Positioned(
            bottom: 2.0,
            child: Container(
              width: 4,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
      ],
    );
  }
}
