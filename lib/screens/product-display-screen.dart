import 'package:flutter/material.dart';

import '../models/product.dart';
import '../widgets/productTile.dart';
import '../screens/cart-screen.dart';

class ProductDisplay extends StatelessWidget {
  final String appBarTitle;
  final List<Product> productList;

  ProductDisplay(this.appBarTitle, this.productList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
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
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        itemCount: productList.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (ctx, i) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ProductTile(
            productList[i],
          ),
        ),
      ),
    );
  }
}
