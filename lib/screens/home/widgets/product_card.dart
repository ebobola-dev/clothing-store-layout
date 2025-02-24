import 'package:clothing_store/assets/resources/resources.dart';
import 'package:clothing_store/models/product.dart';
import 'package:clothing_store/screens/detail/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;
  const ProductCard({super.key, required this.product, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: () {
        final route = PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              ScaleTransition(
            scale: animation,
            child: DetailScreen(),
          ),
        );
        Navigator.of(context).push(route);
      },
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(product.imagePath),
              ),
              const SizedBox(height: 8.0),
              Text(
                product.name,
                style: textTheme.titleMedium,
              ),
              const SizedBox(height: 4.0),
              Text(
                product.type,
                style: textTheme.bodySmall,
              ),
              const SizedBox(height: 12.0),
              Row(
                children: [
                  Text(
                    '\$${product.price}',
                    style: textTheme.titleSmall,
                  ),
                  const SizedBox(width: 24.0),
                  Row(
                    children: [
                      SvgPicture.asset(SvgIcons.star),
                      const SizedBox(width: 4.0),
                      Text(
                        product.rating.toString(),
                        style: textTheme.displaySmall,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          Positioned(
            top: 14.0,
            right: 14.0,
            child: SizedBox(
              width: 24.0,
              height: 24.0,
              child: IconButton.filled(
                onPressed: () {},
                color: Theme.of(context).primaryColor,
                padding: const EdgeInsets.all(4.0),
                icon: SvgPicture.asset(
                  product.isFavorite ? SvgIcons.heartFilled : SvgIcons.heart,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.secondary,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
