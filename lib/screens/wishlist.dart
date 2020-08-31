import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/product-provider.dart';
import '../models/product.dart';
import '../widgets/productTile.dart';

class Wishlist extends StatefulWidget {
  @override
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(
      builder: (ctx, product, ch) => Scaffold(
        body: product.favProducts.isNotEmpty
            ? GridView.builder(
                padding: EdgeInsets.all(10),
                itemCount: product.favProducts.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1),
                itemBuilder: (ctx, i) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ProductTile(
                    product.favProducts[i],
                  ),
                ),
              )
            : Center(
                child: Text('Nothing in Wishlist yet'),
              ),
      ),
    );
  }
}
