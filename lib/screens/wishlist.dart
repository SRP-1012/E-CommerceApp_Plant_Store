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
    return Center(child:Text('Wishlist'))
  }
}
