import 'package:flutter/cupertino.dart';

class Product {
  final String image;
  final String prodId;
  final String title;
  final String description;
  final String category;
  final double price;
  final List<String> tags;
  final double rating;

  Product({
    @required this.image,
    @required this.category,
    @required this.prodId,
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.tags,
    @required this.rating,
  });
}
