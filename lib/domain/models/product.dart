import 'models.dart';

class Product {
  final String image;
  final bool isFavourite;

  final String title;
  final double price;

  final List<ProductColor> productColors;
  const Product({
    required this.image,
    this.isFavourite = false,
    required this.title,
    required this.price,
    required this.productColors,
  });
}
