import 'package:clothing_store/assets/resources/resources.dart';

enum Categories {
  allItems(name: 'All Items', iconPath: SvgIcons.allItems),
  dress(name: 'Dress', iconPath: SvgIcons.dress),
  tShirt(name: 'T-Shirt', iconPath: SvgIcons.tShirt),
  jeans(name: 'Jeans', iconPath: SvgIcons.jeans);

  final String name;
  final String iconPath;

  const Categories({
    required this.name,
    required this.iconPath,
  });
}
