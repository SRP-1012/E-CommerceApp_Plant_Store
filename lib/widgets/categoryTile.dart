import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:getwidget/getwidget.dart';
import '../models/product.dart';
import '../Providers/product-provider.dart';
import '../screens/product-display-screen.dart';

class CategoryTile extends StatelessWidget {
  final category;
  final path;
  CategoryTile(this.category, this.path);
  @override
  Widget build(BuildContext context) {
    List<Product> productOfCategory =
        Provider.of<ProductProvider>(context).productOfCategory(category);

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => ProductDisplay(category, productOfCategory),
          ),
        );
      },
      child: GFCard(
        color: Theme.of(context).primaryColorLight,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
        elevation: 8,
        imageOverlay: AssetImage(
          path,
        ),
        borderRadius: BorderRadius.circular(40),
        boxFit: BoxFit.cover,
        title: GFListTile(
          title: Text(''),
        ),
        content: Center(
          child: Container(
            padding: EdgeInsets.all(8),
            color: Colors.black54,
            child: Text(
              category,
              softWrap: true,
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 0,
                  fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
