import 'package:e_commerce_store_template_x/features/personalization/screens/settings/settings.dart';
import 'package:e_commerce_store_template_x/features/shop/screens/store/store.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'features/shop/screens/home/home.dart';
import 'features/shop/screens/wishlist/favorites.dart';
import 'utils/constants/colors.dart';
import 'utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          animationDuration: const Duration(seconds: 3),
          selectedIndex: controller.selectedValue.value,
          backgroundColor: EHelperFunctions.isDarkMode(context)
              ? EColors.black
              : Colors.white,
          elevation: 0,
          indicatorColor: EHelperFunctions.isDarkMode(context)
              ? EColors.white.withOpacity(0.1)
              : EColors.black.withOpacity(0.1),
          onDestinationSelected: (index) =>
              controller.selectedValue.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedValue.value]),
    );
  }
}

class NavigationController extends GetxController {
  static NavigationController get instance => Get.find();

  final Rx<int> selectedValue = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const FavoriteScreen(),
    const SettingsScreen(),
  ];
}
