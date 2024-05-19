import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/home_screen.dart';
import 'package:iconsax/iconsax.dart';

import 'bottom_nav_controller.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavController());
    return Scaffold(
      bottomNavigationBar: Obx(
            () => NavigationBar(
          height: 80,
          elevation: 0,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          indicatorColor: Colors.amber,
          selectedIndex: controller.selectedIndex.value,
          destinations: const <Widget>[
            NavigationDestination(

              icon: Icon(Iconsax.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.heart),
              label: 'Favorite',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.shop),
              label: 'Shop',
            ),
            NavigationDestination(
              icon:  Icon(Iconsax.user),
              label: 'User',
            ),
          ],
        ),
      ),
      body: Obx(() => controller.screen[controller.selectedIndex.value]),
    );
  }
}


