import 'package:flutter/cupertino.dart';

import '../models/offers.dart';

class OfferProvider with ChangeNotifier {
  List<Offers> _topOffers = [
    Offers(offerImage: 'assets/images/t1.jpg'),
    Offers(offerImage: 'assets/images/t2.jpg'),
    Offers(offerImage: 'assets/images/t3.jpg'),
    Offers(offerImage: 'assets/images/t4.jpg'),
    Offers(offerImage: 'assets/images/t5.jpg'),
  ];
  List<Offers> _mainOffers = [
    Offers(
      offerImage: 'assets/images/b1.jpg',
      mainText: 'Each one Plant one!!',
      description: 'It is our duty to safegaurd mother earth'
    ),
    Offers(
      offerImage: 'assets/images/b2.jpg',
      mainText: 'Each one Plant one!!',
      description: 'It is our duty to safegaurd mother earth'
    ),
    Offers(
      offerImage: 'assets/images/b3.jpg',
      mainText: 'Each one Plant one!!',
      description: 'It is our duty to safegaurd mother earth'
    ),
    Offers(
      offerImage: 'assets/images/b4.jpg',
      mainText: 'Each one Plant one!!',
      description: 'It is our duty to safegaurd mother earth'
    ),
  ];
  List<Offers> _seasonalOffers = [
    Offers(offerImage:'assets/images/ad1.jpg'),
    Offers(offerImage:'assets/images/ad2.jpg'),
    Offers(offerImage:'assets/images/ad3.jpg'),
    Offers(offerImage:'assets/images/ad4.jpg'),
  ];

  List<Offers> get topOffers {
    return [..._topOffers];
  }

  List<Offers> get mainOffers {
    return [..._mainOffers];
  }

  List<Offers> get seasonalOffers {
    return [..._seasonalOffers];
  }
}
