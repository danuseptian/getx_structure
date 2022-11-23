import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../cart/view/cart_view.dart';
import '../../home/view/home_view.dart';
import '../../profile/view/profile_view.dart';
import '../../setting/view/setting_view.dart';
import '../controller/main_navigation_controller.dart';

class MainNavigationView extends StatelessWidget {
  const MainNavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    MainNavigationController controller = Get.put(MainNavigationController());
    List<BottomNavigationBarItem> bottomNavItem = [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: '',
      ),
    ];

    List<Widget> bottomTabView = <Widget>[
      HomeView(),
      CartView(),
      SettingView(),
      ProfileView(),
    ];

    return GetBuilder<MainNavigationController>(builder: (_) {
      return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.selectedIndex,
          onTap: controller.onItemTapped,
          items: bottomNavItem,
        ),
        body: bottomTabView.elementAt(controller.selectedIndex),
      );
    });
  }
}
