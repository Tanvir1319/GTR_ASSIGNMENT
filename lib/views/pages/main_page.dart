
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gtr_assignment/controllers/bottom_tab_bar_controller.dart';
import 'package:gtr_assignment/views/pages/ui_fragments/cart.dart';
import 'package:gtr_assignment/views/pages/ui_fragments/favorite.dart';
import 'package:gtr_assignment/views/pages/ui_fragments/home.dart';
import 'package:gtr_assignment/views/pages/ui_fragments/person.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MainPageProvider(),
      builder: (context, child) => Scaffold(
        body: Consumer<MainPageProvider>(
          builder: (context, mainPageProvider, child) {
            if (mainPageProvider.getSelectedIndex() == 0) {
              return HomeFragment();
            }
            if (mainPageProvider.getSelectedIndex() == 1) {
              return CartFragment();
            }
            if (mainPageProvider.getSelectedIndex() == 2) {
              return FavoriteFragment();
            }
            if (mainPageProvider.getSelectedIndex() == 3) {
              return PersonFragment();
            }
            return Center(
              child: Text('Nothing to show'),
            );
          },
        ),
        bottomNavigationBar: Consumer<MainPageProvider>(
          builder: (context, mainPageProvider, child) => BottomNavigationBar(
             showUnselectedLabels: true,
              elevation: 1.0,
             selectedItemColor: Colors.red,
               unselectedItemColor: Colors.grey,
              currentIndex: mainPageProvider.getSelectedIndex(),
              onTap: (index) => mainPageProvider.setTab(index),
              items: [
                BottomNavigationBarItem(
                    icon:Icon(Icons.home),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon:Icon(Icons.shopping_cart),
                    label: 'Cart'),
                BottomNavigationBarItem(
                    icon:Icon(Icons.favorite),
                    label: 'Wishlist'
                    ),
                    BottomNavigationBarItem(
                    icon:Icon(Icons.person),
                    label: 'fav'
                    ),
              ],
              ),
        ),
      ),
    );
  }
}
