import 'package:e_commerce_store_template_x/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_store_template_x/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce_store_template_x/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_store_template_x/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce_store_template_x/features/shop/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          ECircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(const HomeScreen()),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              EGridLayout(
                  itemCount: 6,
                  itemBuilder: (_, index) => const EProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
