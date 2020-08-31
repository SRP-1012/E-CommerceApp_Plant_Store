import 'package:flutter/cupertino.dart';

class Offers {
  final String offerImage;
  final String mainText;
  final String description;

  Offers({
    @required this.offerImage,
    this.mainText = '',
    this.description = '',
  });
}
