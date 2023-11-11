import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multi_vendor_app/views/buyers/nav_Screens/account_screen.dart';
import 'package:multi_vendor_app/views/buyers/nav_Screens/cart_screen.dart';
import 'package:multi_vendor_app/views/buyers/nav_Screens/category_screen.dart';
import 'package:multi_vendor_app/views/buyers/nav_Screens/home_screen.dart';
import 'package:multi_vendor_app/views/buyers/nav_Screens/search_scree.dart';
import 'package:multi_vendor_app/views/buyers/nav_Screens/store_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;

  List<Widget> _pages = [
    HomeScreen(),
    CategoryScreen(),
    StoreScreen(),
    CartScreen(),
    SearchScreen(),
    AccountScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _pageIndex,
          onTap: (value) {
            setState(() {
              _pageIndex = value;
            });
          },
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.red,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/explore.svg"),
                label: 'CATEGORIES'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/shop.svg"),
                label: 'STORE'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/cart.svg"), label: 'CART'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/search.svg"),
                label: 'SEARCH'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/account.svg"),
                label: 'ACCOUNT')
          ]),
      body: _pages[_pageIndex],
    );
  }
}
