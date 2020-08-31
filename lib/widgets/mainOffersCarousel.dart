import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import '../models/offers.dart';
import './OffersCard.dart';

class MainOffersCarousel extends StatefulWidget {
  final List<Offers> inputList;
  MainOffersCarousel(this.inputList);
  @override
  _MainOffersCarouselState createState() => _MainOffersCarouselState();
}

class _MainOffersCarouselState extends State<MainOffersCarousel> {
  @override
  Widget build(BuildContext context) {
    return GFCarousel(
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      enlargeMainPage: true,
      pagination: true,
      viewportFraction: 1.0,
      items: widget.inputList.map((prod) {
        return Container(
          width: MediaQuery.of(context).size.width,
          child: OffersCard(prod),
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
