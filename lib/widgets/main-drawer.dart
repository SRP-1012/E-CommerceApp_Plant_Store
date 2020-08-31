import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/cart-screen.dart';
import '../screens/orders-screen.dart';
import '../Providers/auth-provider.dart';
import '../screens/login-screen.dart';
import '../screens/categories-screen.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  bool isSignedIn;
  var _isInit = true;
  @override
  void didChangeDependencies() {
    if (_isInit) {
      isSignedIn = Provider.of<AuthProvider>(context, listen: false).isSignedIn;
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  void switchAuth() {
    Provider.of<AuthProvider>(context, listen: false).switchAuth();
    setState(() {
      isSignedIn = Provider.of<AuthProvider>(context, listen: false).isSignedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: Container(
              color: Colors.green,
            ),
          ),
          Container(
            height: 40,
            child: ListTile(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
          ),
          Divider(
            thickness: 2,
          ),
          Container(
            height: 40,
            child: ListTile(
              onTap: () {
                Navigator.pushReplacementNamed(
                    context, CategoriesScreen.routename);
              },
              leading: Icon(Icons.category),
              title: Text('Categories'),
            ),
          ),
          Divider(
            thickness: 2,
          ),
          Container(
            height: 40,
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context,
                    isSignedIn ? CartScreen.routename : LoginScreen.routename);
              },
              leading: Icon(Icons.shopping_cart),
              title: Text('My Cart'),
            ),
          ),
          Divider(
            thickness: 2,
          ),
          Container(
            height: 40,
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(
                    context,
                    isSignedIn
                        ? OrdersScreen.routename
                        : LoginScreen.routename);
              },
              leading: Icon(Icons.history),
              title: Text('My Orders'),
            ),
          ),
          Divider(
            thickness: 2,
          ),
          Container(
            height: 40,
            child: ListTile(
                onTap: () {
                  if (!isSignedIn) {
                    Navigator.pushNamed(context, LoginScreen.routename);
                  } else {
                    switchAuth();
                  }
                },
                leading: Icon(Icons.power_settings_new),
                title: isSignedIn ? Text('Logout') : Text('Login')),
          ),
          Divider(
            thickness: 2,
          ),
          Container(
            height: 40,
            child: ListTile(
              onTap: () {},
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ),
          Divider(
            thickness: 2,
          ),
          Container(
            height: 40,
            child: ListTile(
              onTap: () {},
              leading: Icon(Icons.info),
              title: Text('About'),
            ),
          ),
        ],
      ),
    );
  }
}
