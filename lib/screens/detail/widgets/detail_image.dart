import 'package:clothing_store/assets/colors/colors.dart';
import 'package:clothing_store/assets/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailImage extends StatelessWidget {
  const DetailImage({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Stack(
        children: [
          Image.asset(
            Images.image2,
            height: MediaQuery.of(context).size.height * 0.54,
            width: MediaQuery.of(context).size.width - 48.0,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 16.0,
            left: 16.0,
            child: IconButton.filled(
              onPressed: () => Navigator.pop(context),
              icon: SvgPicture.asset(
                SvgIcons.arrowLeft,
                colorFilter: ColorFilter.mode(primaryColor, BlendMode.srcIn),
              ),
              style: IconButton.styleFrom(
                backgroundColor: grey2,
                shadowColor: primaryColor.withAlpha(50),
                elevation: 5.0,
              ),
            ),
          ),
          Positioned(
            top: 16.0,
            right: 16.0,
            child: IconButton.filled(
              onPressed: () {},
              icon: SvgPicture.asset(
                SvgIcons.heartFilled,
                colorFilter: ColorFilter.mode(primaryColor, BlendMode.srcIn),
                width: 16.0,
                height: 16.0,
              ),
              style: IconButton.styleFrom(
                backgroundColor: grey2,
                shadowColor: primaryColor.withAlpha(50),
                elevation: 5.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
