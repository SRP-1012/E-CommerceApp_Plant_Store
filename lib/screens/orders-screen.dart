import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/order-provider.dart';
import '../widgets/orderTile.dart';

class OrdersScreen extends StatelessWidget {
  static const routename = '/orders';

  @override
  Widget build(BuildContext context) {
    print('building orders');
    // final orderData = Provider.of<Orders>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Your Orders'),
        ),
        body: Consumer<OrderProvider>(
          builder: (ctx, orderData, child) => ListView.builder(
            itemCount: orderData.allOrder.length,
            itemBuilder: (ctx, i) => OrderTile(
                order: orderData.allOrder[orderData.allOrder.length - 1 - i]),
          ),
        ));
  }
}
