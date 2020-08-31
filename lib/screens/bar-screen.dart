import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/main-drawer.dart';
import './home.dart';
import './wishlist.dart';
import './profile.dart';
import './cart-screen.dart';
import '../Providers/auth-provider.dart';
import './login-screen.dart';

class BarScreen extends StatefulWidget {
  @override
  _BarScreenState createState() => _BarScreenState();
}

class _BarScreenState extends State<BarScreen> {
  int selectedPageIndex = 0;

  void _pageIndex(index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  List pages;

  @override
  void initState() {
    pages = [
      HomeScreen(),
      Wishlist(),
      ProfileScreen(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isSignedIn = Provider.of<AuthProvider>(context).isSignedIn;

    return Scaffold(
      appBar: AppBar(
        title: Text('Plant Store'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.pushNamed(context,
                  isSignedIn ? CartScreen.routename : LoginScreen.routename);
            },
          )
        ],
      ),
      drawer: MainDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Theme.of(context).primaryColorDark,
        currentIndex: selectedPageIndex,
        onTap: _pageIndex,
        showSelectedLabels: false,
        selectedIconTheme: IconThemeData(size: 40),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), title: Text('Wishlist')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile')),
        ],
      ),
      body: pages[selectedPageIndex],
    );
  }
}
