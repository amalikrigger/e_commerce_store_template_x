import 'package:e_commerce_store_template_x/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_store_template_x/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_store_template_x/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_store_template_x/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_store_template_x/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class EProductAttributes extends StatelessWidget {
  const EProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        ERoundedContainer(
          padding: const EdgeInsets.all(ESizes.md),
          backgroundColor: dark ? EColors.darkerGrey : EColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const ESectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: ESizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const EProductTitleText(
                            title: 'Price : ',
                            smallSize: true,
                          ),
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: ESizes.spaceBtwItems,
                          ),
                          const EProductPriceText(price: '20')
                        ],
                      ),
                      Row(
                        children: [
                          const EProductTitleText(
                            title: 'Stock : ',
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const EProductTitleText(
                title:
                    'This is the description of the product and it can go upto max 4 lines',
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ESectionHeading(
              title: 'Colors',
              showActionButton: false,
            ),
            const SizedBox(
              height: ESizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                EChoiceChip(
                    text: 'Green', selected: true, onSelected: (value) {}),
                EChoiceChip(
                    text: 'Blue', selected: false, onSelected: (value) {}),
                EChoiceChip(
                    text: 'Yellow', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ESectionHeading(
              title: 'Size',
              showActionButton: false,
            ),
            const SizedBox(
              height: ESizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                EChoiceChip(
                    text: 'EU 34', selected: true, onSelected: (value) {}),
                EChoiceChip(
                    text: 'EU 36', selected: false, onSelected: (value) {}),
                EChoiceChip(
                    text: 'EU 38', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        )
      ],
    );
  }
}
