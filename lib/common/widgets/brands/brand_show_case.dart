import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';
import 'brand_card.dart';

class EBrandShowcase extends StatelessWidget {
  const EBrandShowcase({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return ERoundedContainer(
      margin: const EdgeInsets.only(bottom: ESizes.spaceBtwItems),
      showBorder: true,
      borderColor: EColors.darkGrey,
      backgroundColor: Colors.transparent,
      child: Column(
        children: [
          /// Brand with Products Count
          const EBrandCard(
            showBorder: false,
          ),

          const SizedBox(height: ESizes.spaceBtwItems / 2),

          /// Brand Top 3 Product Images
          Row(
              children: images
                  .map((img) => brandTopProductImageWidget(img, context))
                  .toList()),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: ERoundedContainer(
        height: 100,
        padding: const EdgeInsets.all(ESizes.md),
        margin: const EdgeInsets.only(right: ESizes.sm),
        backgroundColor: EHelperFunctions.isDarkMode(context)
            ? EColors.darkerGrey
            : EColors.light,
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
