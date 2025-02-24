import 'package:clothing_store/assets/resources/resources.dart';

class Product {
  final String name;
  final String type;
  final String imagePath;
  final double price;
  final double rating;
  final bool isFavorite;

  const Product({
    required this.name,
    required this.type,
    required this.imagePath,
    required this.price,
    required this.rating,
    this.isFavorite = false,
  });
}

const products = [
  Product(
    name: 'Modern Light Clothes',
    type: 'T-Shirt',
    imagePath: Images.image1,
    price: 212.99,
    rating: 5.0,
  ),
  Product(
    name: 'Light Dress Bless',
    type: 'Dress modern',
    imagePath: Images.image2,
    price: 162.99,
    rating: 5.0,
    isFavorite: true,
  ),
  Product(
    name: 'Maroon Dark Top',
    type: 'Dress',
    imagePath: Images.image3,
    price: 194.99,
    rating: 5.0,
  ),
  Product(
    name: 'Light Dress Yellow',
    type: 'Dress Modern',
    imagePath: Images.image4,
    price: 122.99,
    rating: 5.0,
  ),
];
