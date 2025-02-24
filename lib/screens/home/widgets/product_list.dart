import 'package:clothing_store/models/product.dart';
import 'package:clothing_store/screens/home/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 24.0,
      crossAxisSpacing: 17.0,
      padding: const EdgeInsets.only(bottom: 93.0),
      itemCount: products.length,
      itemBuilder: (context, index) => ProductCard(
        product: products[index],
        onTap: () {},
      ),
    );
  }
}
