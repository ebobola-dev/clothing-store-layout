import 'package:clothing_store/models/category.dart';
import 'package:clothing_store/screens/home/widgets/category_card.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34.0,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: Categories.values.length,
        itemBuilder: (context, index) => CategoryCard(
          category: Categories.values[index],
          onTap: () => setState(() {
            _activeIndex = index;
          }),
          isActive: _activeIndex == index,
        ),
        separatorBuilder: (context, _) => const SizedBox(width: 16.0),
      ),
    );
  }
}
