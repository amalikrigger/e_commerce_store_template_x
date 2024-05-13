import 'package:e_commerce_store_template_x/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce_store_template_x/features/shop/screens/home/widgets/header_categories.dart';
import 'package:e_commerce_store_template_x/features/shop/screens/home/widgets/header_search_container.dart';
import 'package:e_commerce_store_template_x/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce_store_template_x/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const EPrimaryHeaderContainer(
              child: Column(
                children: [
                  EHomeAppBar(),
                  SizedBox(height: ESizes.spaceBtwSections),
                  ESearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(height: ESizes.spaceBtwSections),
                  Padding(
                    padding: EdgeInsets.only(left: ESizes.defaultSpace),
                    child: Column(
                      children: [
                        ESectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: EColors.white,
                        ),
                        SizedBox(height: ESizes.spaceBtwItems),
                        EHomeCategories()
                      ],
                    ),
                  ),
                  SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(ESizes.defaultSpace),
              child: Column(
                children: [
                  const EPromoSlider(
                    banners: [
                      EImages.promoBanner1,
                      EImages.promoBanner2,
                      EImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(height: ESizes.spaceBtwSections),
                  ESectionHeading(
                    title: 'Popular Products',
                    onPressed: () {},
                  ),
                  const SizedBox(height: ESizes.spaceBtwItems),
                  EGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const EProductCardVertical(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
