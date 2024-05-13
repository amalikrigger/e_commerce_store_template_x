import 'package:e_commerce_store_template_x/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_store_template_x/common/widgets/images/circular_image.dart';
import 'package:e_commerce_store_template_x/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_store_template_x/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_store_template_x/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_store_template_x/utils/constants/enums.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class EProductMetaData extends StatelessWidget {
  const EProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = EHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ERoundedContainer(
              radius: ESizes.sm,
              backgroundColor: EColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: ESizes.sm, vertical: ESizes.xs),
              child: Text('25%',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: EColors.black)),
            ),
            const SizedBox(
              width: ESizes.spaceBtwItems,
            ),
            Text('\$250',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(
              width: ESizes.spaceBtwItems,
            ),
            const EProductPriceText(
              price: '175',
              isLarge: true,
            ),
          ],
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems / 1.5,
        ),
        const EProductTitleText(
          title: 'Green Nike Sports Shirt',
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems / 1.5,
        ),
        Row(
          children: [
            const EProductTitleText(
              title: 'Status',
            ),
            const SizedBox(
              width: ESizes.spaceBtwItems,
            ),
            Text(
              'In Stock',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems / 1.5,
        ),
        Row(
          children: [
            ECircularImage(
              image: EImages.shoeIcon,
              width: 32,
              height: 32,
              overlayColor: darkMode ? EColors.white : EColors.black,
            ),
            const EBrandTitleWithVerifiedIcon(
              title: 'Nike',
              brandTextSize: TextSizes.medium,
            )
          ],
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems / 1.5,
        ),
      ],
    );
  }
}
