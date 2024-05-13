import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class EProductImageSlider extends StatelessWidget {
  const EProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return ECurvedEdgesWidget(
        child: Container(
      color: dark ? EColors.darkerGrey : EColors.light,
      child: Stack(
        children: [
          const SizedBox(
            height: 400,
            child: Padding(
              padding: EdgeInsets.all(ESizes.productImageRadius * 3),
              child: Center(
                child: Image(
                  image: AssetImage(EImages.productImage1),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            right: 0,
            left: ESizes.defaultSpace,
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const AlwaysScrollableScrollPhysics(),
                itemBuilder: (_, index) => ERoundedImage(
                  width: 80,
                  backgroundColor: dark ? EColors.dark : EColors.white,
                  imageUrl: EImages.productImage3,
                  border: Border.all(color: EColors.primary),
                  padding: const EdgeInsets.all(ESizes.sm),
                ),
                separatorBuilder: (_, __) => const SizedBox(
                  width: ESizes.spaceBtwItems,
                ),
                itemCount: 6,
              ),
            ),
          ),
          const EAppBar(
            showBackArrow: true,
            actions: [
              ECircularIcon(
                icon: Iconsax.heart5,
                color: Colors.red,
              )
            ],
          )
        ],
      ),
    ));
  }
}
