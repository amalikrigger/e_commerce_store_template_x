import 'package:e_commerce_store_template_x/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_store_template_x/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce_store_template_x/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class ECategoryTab extends StatelessWidget {
  const ECategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              const EBrandShowcase(
                images: [
                  EImages.productImage3,
                  EImages.productImage2,
                  EImages.productImage1,
                ],
              ),
              const EBrandShowcase(
                images: [
                  EImages.productImage3,
                  EImages.productImage2,
                  EImages.productImage1,
                ],
              ),
              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),
              ESectionHeading(
                title: "You might like",
                showActionButton: true,
                onPressed: () {},
              ),
              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),
              EGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const EProductCardVertical())
            ],
          ),
        ),
      ],
    );
  }
}
