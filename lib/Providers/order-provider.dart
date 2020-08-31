import 'package:flutter/cupertino.dart';

import '../models/order.dart';

class OrderProvider with ChangeNotifier {
  List<Order> _allOrders = [];

  List<Order> get allOrder {
    return [..._allOrders];
  }

  void addOrder(Order order) {
    _allOrders.add(order);
    print(_allOrders);
    notifyListeners();
  }

  void removeOrder(Order order) {
    _allOrders.remove(order);
    notifyListeners();
  }
}
