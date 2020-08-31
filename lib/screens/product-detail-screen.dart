import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product.dart';
import '../Providers/product-provider.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;
  // final double price;

  // ProductDetailScreen(this.title, this.price);
  static const routeName = '/product-detail';

  //THE FOLLOWING IS A LIST OF DUMMY REVIEWS which actually has to
  // be a part of Products OR has to be in a separate database with the
  //prodId along with it.
  //THIS IS JUST FOR YOUR FRONT-END looks....but this can EASILY be fitted
  //into desired BACK-END.
  final List<Map<String, Object>> reviews = [
    {
      'rating': 4.0,
      'review':
          'Excellent phone in this budget .The only thing is battery drains fast and charges slowly and also camera is not so good but works fine .'
    },
    {
      'rating': 4.0,
      'review':
          'Excellent phone in this budget .The only thing is battery drains fast and charges slowly and also camera is not so good but works fine .'
    },
    {
      'rating': 4.0,
      'review':
          'Excellent phone in this budget .The only thing is battery drains fast and charges slowly and also camera is not so good but works fine .'
    },
    {
      'rating': 4.0,
      'review':
          'Excellent phone in this budget .The only thing is battery drains fast and charges slowly and also camera is not so good but works fine .'
    },
    {
      'rating': 4.0,
      'review':
          'Excellent phone in this budget .The only thing is battery drains fast and charges slowly and also camera is not so good but works fine .'
    },
    {
      'rating': 4.0,
      'review':
          'Excellent phone in this budget .The only thing is battery drains fast and charges slowly and also camera is not so good but works fine .'
    },
  ];

  @override
  Widget build(BuildContext context) {
    final loadedProduct =
        ModalRoute.of(context).settings.arguments as Product; // is the id!

    return Scaffold(
      // appBar: AppBar(
      //   title: Text(loadedProduct.title),
      // ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  loadedProduct.title,
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
              background: Hero(
                tag: loadedProduct.prodId,
                child: Image.asset(
                  loadedProduct.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Text(
                        'Price : ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        ),
                      ),
                      Card(
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Theme.of(context).primaryColor,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '\$${loadedProduct.price}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    'Description : ',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  width: double.infinity,
                  child: Text(
                    loadedProduct.description,
                    textAlign: TextAlign.left,
                    softWrap: true,
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                SizedBox(height: 10),
                Consumer<ProductProvider>(
                  builder: (ctx, product, ch) => Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: FlatButton.icon(
                        color: product.cart.contains(loadedProduct.prodId)
                            ? Colors.grey
                            : Theme.of(context).primaryColor,
                        onPressed: () {
                          product.toggleCart(loadedProduct.prodId);
                          print(product.cart);
                          print(product.myCart);
                          print('*************');
                        },
                        icon: Icon(
                          Icons.shopping_cart,
                          color: product.cart.contains(loadedProduct.prodId)
                              ? Colors.black
                              : Theme.of(context).accentColor,
                        ),
                        label: Text(
                          product.cart.contains(loadedProduct.prodId)
                              ? 'Remove from Cart'
                              : 'Add to Cart',
                          style: TextStyle(
                            color: product.cart.contains(loadedProduct.prodId)
                                ? Colors.black
                                : Theme.of(context).accentColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(thickness: 3),
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Text(
                        'Rating : ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        ),
                      ),
                      Card(
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Theme.of(context).primaryColor,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                '${loadedProduct.rating}',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Theme.of(context).accentColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 4),
                              Icon(
                                Icons.star,
                                color: Theme.of(context).accentColor,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Reviews : ',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  padding: const EdgeInsets.all(15),
                  child: ListView.builder(
                    itemCount: reviews.length,
                    itemBuilder: (ctx, i) => Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      elevation: 8,
                      child: ListTile(
                        leading: SizedBox(
                          width: 80,
                          child: Card(
                            elevation: 20,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: Theme.of(context).primaryColor,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(
                                    '${loadedProduct.rating}',
                                    style: TextStyle(
                                        color: Theme.of(context).accentColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 4),
                                  Icon(
                                    Icons.star,
                                    color: Theme.of(context).accentColor,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        title: Text(reviews[i]['review']),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
