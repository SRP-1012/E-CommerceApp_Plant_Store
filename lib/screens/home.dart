import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/topOffersCard.dart';
import '../Providers/product-provider.dart';
import '../models/product.dart';
import '../widgets/categoryTile.dart';
import '../widgets/customCarousel.dart';
import '../models/offers.dart';
import '../Providers/offer-provider.dart';
import '../widgets/mainOffersCarousel.dart';
import '../widgets/multipleItemCarousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Product> _topPicks = [];

  List<String> favIds;

  List<Offers> mainOffers;

  List<Offers> topOffers;

  List<Offers> seasonalOffers;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> _categoryList = [
      {'cat': 'Flowering', 'path': 'assets/images/Flowering.png'},
      {'cat': 'Medicinal', 'path': 'assets/images/Medicinal.png'},
      {'cat': 'Waxy', 'path': 'assets/images/Waxy.png'},
      {'cat': 'Decorative', 'path': 'assets/images/Show-Plant.png'},
    ];

    favIds = Provider.of<ProductProvider>(context, listen: false).topPicks;

    Provider.of<ProductProvider>(context, listen: false)
        .allProducts
        .forEach((prod) {
      if (favIds.contains(prod.prodId)) {
        _topPicks.add(prod);
      }
    });

    mainOffers = Provider.of<OfferProvider>(context, listen: false).mainOffers;
    topOffers = Provider.of<OfferProvider>(context, listen: false).topOffers;
    seasonalOffers =
        Provider.of<OfferProvider>(context, listen: false).seasonalOffers;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              //Holds Ads or Offers or etc

              Container(
                margin: EdgeInsets.only(
                  top: 10,
                  bottom: 30,
                  left: 8,
                  right: 8,
                ),
                height: MediaQuery.of(context).size.height * 0.3,
                color: Theme.of(context).splashColor,
                child: MainOffersCarousel(seasonalOffers),
              ),

              //Can be any Heading here
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Top Offers Today',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 5,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: MultipleItemCarousel(topOffers)),
              Divider(),
              //Holds Ads or Offers or etc
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: MainOffersCarousel(mainOffers),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 5,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                height: MediaQuery.of(context).size.height * 0.3,
                child: ListView.builder(
                  itemCount: _categoryList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, i) => Container(
                    width: 200,
                    child: CategoryTile(
                      _categoryList[i]['cat'],
                      _categoryList[i]['path'],
                    ),
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Top Picks',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 5,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: CustomCarousel(_topPicks)),
            ],
          ),
        ),
      ),
    );
  }
}
