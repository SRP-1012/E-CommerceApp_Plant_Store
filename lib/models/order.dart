import 'package:flutter/cupertino.dart';

import './product.dart';

class Order {
  final List<Map<String, Object>> productList;
  final double amount;
  final DateTime orderId;

  Order(
      {@required this.productList,
      @required this.orderId,
      @required this.amount});
}
