import 'package:e_commerce_store_template_x/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_store_template_x/common/widgets/products/ratings/rating_indicator.dart';
import 'package:e_commerce_store_template_x/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(EImages.userProfileImage1),
                ),
                const SizedBox(
                  width: ESizes.spaceBtwItems,
                ),
                Text(
                  'John Doe',
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems,
        ),
        Row(
          children: [
            const ERatingBarIndicator(rating: 4),
            const SizedBox(
              width: ESizes.spaceBtwItems,
            ),
            Text(
              '01 Nov, 2023',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems,
        ),
        const ReadMoreText(
          'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great job!',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: "show less",
          trimCollapsedText: "show more",
          moreStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: EColors.primary,
          ),
          lessStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: EColors.primary,
          ),
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems,
        ),
        ERoundedContainer(
          backgroundColor: dark ? EColors.darkerGrey : EColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(ESizes.sm),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "T's Store",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      "02 Nov, 2023",
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
                const SizedBox(
                  height: ESizes.spaceBtwItems,
                ),
                const ReadMoreText(
                  'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great job!',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: "show less",
                  trimCollapsedText: "show more",
                  moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: EColors.primary,
                  ),
                  lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: EColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems,
        ),
      ],
    );
  }
}
