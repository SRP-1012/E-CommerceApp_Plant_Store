import 'package:flutter/material.dart';

import 'package:getwidget/getwidget.dart';
import '../models/product.dart';
import 'productTile.dart';

class CustomCarousel extends StatefulWidget {
  final List<Product> inputList;
  CustomCarousel(this.inputList);
  @override
  _CustomCarouselState createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  @override
  Widget build(BuildContext context) {
    return GFCarousel(
      autoPlay: true,
      height: MediaQuery.of(context).size.height * 0.3,
      autoPlayInterval: Duration(seconds: 4),
      enlargeMainPage: true,
      items: widget.inputList.map((prod) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(8),
          child: ProductTile(prod)
        );
      }).toList(),
      onPageChanged: (index) {
        setState(() {
          index;
        });
      },
    );
  }
}
