import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/bar-screen.dart';
import './screens/cart-screen.dart';
import './screens/orders-screen.dart';
import './screens/categories-screen.dart';
import './screens/login-screen.dart';
import './Providers/auth-provider.dart';
import 'Providers/order-provider.dart';
import './Providers/product-provider.dart';
import './Providers/offer-provider.dart';
import './screens/product-detail-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
          create: (_) => AuthProvider(),
        ),
        ChangeNotifierProvider<OrderProvider>(
          create: (_) => OrderProvider(),
        ),
        ChangeNotifierProvider<ProductProvider>(
          create: (_) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => OfferProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
          primaryColor: Colors.green[800],
          accentColor: Colors.white,
          splashColor: Colors.amber,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: BarScreen(),
        routes: {
          CartScreen.routename: (ctx) => CartScreen(),
          OrdersScreen.routename: (ctx) => OrdersScreen(),
          LoginScreen.routename: (ctx) => LoginScreen(),
          CategoriesScreen.routename: (ctx) => CategoriesScreen(),
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen()
        },
      ),
    );
  }
}
