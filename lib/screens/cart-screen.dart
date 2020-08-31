import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/product-provider.dart';
import '../models/order.dart';
import '../Providers/order-provider.dart';
import '../widgets/cartTile.dart';

class CartScreen extends StatelessWidget {
  static const routename = '/CartScreen';

  @override
  Widget build(BuildContext context) {
    void placeOrder(List<Map<String, Object>> products) {
      double amount = 0;
      Provider.of<ProductProvider>(context, listen: false)
          .myCart
          .forEach((element) {
        double price = Provider.of<ProductProvider>(context, listen: false)
            .allProducts
            .firstWhere((prod) => prod.prodId == element['prodId'])
            .price;
        amount = amount + (price * int.parse(element['count']));
      });
      Order order = Order(
        amount: amount,
        productList: products,
        orderId: DateTime.now(),
      );
      Provider.of<OrderProvider>(context, listen: false).addOrder(order);
    }

    final List<String> cartItems = Provider.of<ProductProvider>(context).cart;
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
      ),
      body: Provider.of<ProductProvider>(context).myCart.isEmpty
          ? Center(
              child: Text('Nothing in Cart yet!'),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: ListView.builder(
                    itemCount: cartItems.length,
                    itemBuilder: (ctx, i) => CartTile(cartItems[i]),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 80),
                  width: double.infinity,
                  child: FlatButton(
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      placeOrder(
                          Provider.of<ProductProvider>(context, listen: false)
                              .myCart);

                      Provider.of<ProductProvider>(context, listen: false)
                          .emptyCart();
                    },
                    child: Text(
                      'Place Order',
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
