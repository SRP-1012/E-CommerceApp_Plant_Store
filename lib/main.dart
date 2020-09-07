import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/bar-screen.dart';
import './screens/cart-screen.dart';
import './screens/orders-screen.dart';  
import './screens/login-screen.dart';
import './Providers/auth-provider.dart';


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
        },
      ),
    );
  }
}
