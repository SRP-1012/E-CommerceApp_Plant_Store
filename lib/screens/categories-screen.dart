import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:provider/provider.dart';

import '../widgets/main-drawer.dart';
import './cart-screen.dart';
import '../widgets/categoryTile.dart';
import '../widgets/mainOffersCarousel.dart';
import '../models/offers.dart';
import '../Providers/offer-provider.dart';

class CategoriesScreen extends StatelessWidget {
  static const routename = '/categories-screen';

//You can Change this List as per your requirment.
  final List<Map<String, String>> _categoryList = [
    {'cat': 'Flowering', 'path': 'assets/images/Flowering.png'},
    {'cat': 'Medicinal', 'path': 'assets/images/Medicinal.png'},
    {'cat': 'Waxy', 'path': 'assets/images/Waxy.png'},
    {'cat': 'Decorative', 'path': 'assets/images/Show-Plant.png'},
  ];

  @override
  Widget build(BuildContext context) {
    final List<Offers> seasonalOffers =
        Provider.of<OfferProvider>(context).seasonalOffers;
    return Scaffold(
      appBar: AppBar(
        title: Text('Plant Store'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.pushNamed(context, CartScreen.routename);
            },
          )
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
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
          Text(
            'Categories',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 25,
              letterSpacing: 4,
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Container(
              child: GridView.builder(
                itemCount: _categoryList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (ctx, i) => CategoryTile(
                    _categoryList[i]['cat'], _categoryList[i]['path']),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
