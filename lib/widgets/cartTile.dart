import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/product-provider.dart';
import '../models/product.dart';
import '../screens/product-detail-screen.dart';

class CartTile extends StatefulWidget {
  final String prodId;
  CartTile(this.prodId);
  @override
  _CartTileState createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  @override
  Widget build(BuildContext context) {
    final Product product = Provider.of<ProductProvider>(context, listen: false)
        .allProducts
        .firstWhere(
          (element) => element.prodId == widget.prodId,
        );

    int index = Provider.of<ProductProvider>(context)
        .myCart
        .indexWhere((element) => element['prodId'] == widget.prodId);

    int count =
        int.parse(Provider.of<ProductProvider>(context).myCart[index]['count']);
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: EdgeInsets.all(10),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, ProductDetailScreen.routeName,
                  arguments: product);
            },
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(product.image),
              ),
              title: Text(
                product.title,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                '\$${(product.price).toString()}',
                softWrap: true,
                style:
                    TextStyle(color: Colors.black, fontStyle: FontStyle.italic),
              ),
              trailing: Container(
                width: 90,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (count == 1) {
                          showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              title: Text('REMOVE FROM CART ???'),
                              content: Text(
                                  'Are you sure you want to remove item from cart ??'),
                              actions: [
                                FlatButton(
                                  onPressed: () {
                                    Provider.of<ProductProvider>(context,
                                            listen: false)
                                        .changeCartCount(false, widget.prodId);
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
                            ),
                          );
                        } else {
                          Provider.of<ProductProvider>(context, listen: false)
                              .changeCartCount(false, widget.prodId);
                        }
                      },
                      child: Container(
                        width: 30,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          color: Theme.of(context).primaryColor,
                          child: Center(
                            child: Icon(
                              Icons.minimize,
                              color: Theme.of(context).accentColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 30,
                      child: Card(
                        child: Center(
                          child: Text(count.toString()),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Provider.of<ProductProvider>(context, listen: false)
                            .changeCartCount(true, widget.prodId);
                      },
                      child: Container(
                        width: 30,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          color: Theme.of(context).primaryColor,
                          child: Center(
                            child: Icon(
                              Icons.add,
                              color: Theme.of(context).accentColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 2,
            top: 0,
            child: GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: Text('REMOVE FROM CART ???'),
                    content: Text(
                        'Are you sure you want to remove item from cart ??'),
                    actions: [
                      FlatButton(
                        onPressed: () {
                          Provider.of<ProductProvider>(context, listen: false)
                              .removeCartItem(widget.prodId);
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
                  ),
                );
              },
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                foregroundColor: Colors.black,
                maxRadius: 10,
                child: Text('x'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
