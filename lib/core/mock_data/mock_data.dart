import 'package:flutter/material.dart';

import '../../domain/models/models.dart';

List<Product> productList = [
  const Product(
    image: 'assets/product_images/chair.png',
    title: 'Ostano Chair',
    price: 560,
    productColors: [
      ProductColor(color: Colors.red),
      ProductColor(color: Colors.blue),
      ProductColor(color: Colors.yellow),
    ],
  ),
  const Product(
    image: 'assets/product_images/lamp.png',
    title: 'Svallet lamp',
    price: 325,
    productColors: [
      ProductColor(color: Colors.red),
      ProductColor(color: Colors.yellow),
    ],
  ),
  const Product(
    image: 'assets/product_images/stool.png',
    title: 'Marius stool',
    price: 120,
    productColors: [
      ProductColor(color: Colors.blue),
      ProductColor(color: Colors.green),
      ProductColor(color: Colors.yellow),
    ],
  ),
  const Product(
    image: 'assets/product_images/table.png',
    title: 'Torald table',
    price: 760,
    productColors: [
      ProductColor(color: Colors.red),
      ProductColor(color: Colors.green),
    ],
  ),
];
