import 'package:flutter/material.dart';
import 'package:plantStore/Providers/product-provider.dart';
import 'package:provider/provider.dart';

import '../Providers/product-provider.dart';
import '../models/product.dart';
import '../screens/product-detail-screen.dart';
import '../Providers/auth-provider.dart';
import '../screens/login-screen.dart';

class ProductTile extends StatefulWidget {
  final Product product;

  ProductTile(this.product);

  @override
  _ProductTileState createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {
  var _isInit = true;

  List<Product> favList;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      favList = Provider.of<ProductProvider>(context).favProducts;
    }

    super.didChangeDependencies();
  }

  void _toggleFav(Product a) {
    if (favList.contains(a)) {
      showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
                title: Text('Remove from WishList ???'),
                content: Text('Are you sure to REMOVE item from Wishlist ??'),
                actions: [
                  FlatButton(
                    onPressed: () {
                      setState(() {
                        favList.remove(a);
                      });
                      Provider.of<ProductProvider>(context, listen: false)
                          .toggleFav(a);
                      Navigator.of(context).pop();
                    },
                    child: Text('Yes'),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('No'),
                  ),
                ],
              ));
    } else {
      setState(() {
        favList.add(a);
      });
      Provider.of<ProductProvider>(context, listen: false).toggleFav(a);
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isSignedIn = Provider.of<AuthProvider>(context).isSignedIn;

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              ProductDetailScreen.routeName,
              arguments: widget.product,
            );
          },
          child: Hero(
            tag: widget.product.prodId,
            child: FadeInImage(
              placeholder: AssetImage('assets/images/noImage.png'),
              image: AssetImage(widget.product.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
              icon: Icon(
                Provider.of<ProductProvider>(context)
                        .favProducts
                        .contains(widget.product)
                    ? Icons.favorite
                    : Icons.favorite_border,
              ),
              color: Colors.red,
              onPressed: () {
                if (!isSignedIn) {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: Text('Not Logged In !!'),
                      content: Text('Would you like to Login now ??'),
                      actions: [
                        FlatButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(LoginScreen.routename);
                            },
                            child: Text('Yes')),
                        FlatButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Later')),
                      ],
                    ),
                  );
                } else {
                  return _toggleFav(widget.product);
                }
              }),
          title: Text(
            widget.product.title,
            softWrap: true,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
