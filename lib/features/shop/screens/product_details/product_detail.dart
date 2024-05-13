import 'package:e_commerce_store_template_x/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_store_template_x/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:e_commerce_store_template_x/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:e_commerce_store_template_x/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:e_commerce_store_template_x/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:e_commerce_store_template_x/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:e_commerce_store_template_x/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:e_commerce_store_template_x/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../../../../utils/constants/sizes.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const EBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const EProductImageSlider(),
            Padding(
              padding: const EdgeInsets.only(
                right: ESizes.defaultSpace,
                left: ESizes.defaultSpace,
                bottom: ESizes.defaultSpace,
              ),
              child: Column(
                children: [
                  const ERatingAndShare(),
                  const EProductMetaData(),
                  const EProductAttributes(),
                  const SizedBox(height: ESizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Checkout')),
                  ),
                  const SizedBox(height: ESizes.spaceBtwSections),
                  const ESectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(height: ESizes.spaceBtwItems),
                  const ReadMoreText(
                    'This is a product description for blue Nike Sleeve less vest. There are more things that can be added but I am',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  const Divider(),
                  const SizedBox(height: ESizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ESectionHeading(
                        title: 'Reviews(199)',
                        onPressed: () =>
                            Get.to(() => const ProductReviewsScreen()),
                        showActionButton: false,
                      ),
                      IconButton(
                        onPressed: () =>
                            Get.to(() => const ProductReviewsScreen()),
                        icon: const Icon(
                          Iconsax.arrow_right_3,
                          size: 18,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: ESizes.spaceBtwSections),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
