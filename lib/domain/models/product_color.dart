import 'package:flutter/material.dart';

class ProductColor {
  final Color color;
  final bool isSelected;

  const ProductColor({
    required this.color,
    this.isSelected = false,
  });
}
