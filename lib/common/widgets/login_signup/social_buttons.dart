import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class ESocialButtons extends StatelessWidget {
  const ESocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(LoginController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /// Google Button
        Container(
          padding: const EdgeInsets.all(ESizes.xs),
          decoration: BoxDecoration(
              border: Border.all(color: EColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () => {},
            // onPressed: () => controller.googleSignIn(),
            icon: const Image(
              width: ESizes.iconMd + 4,
              height: ESizes.iconMd + 4,
              image: AssetImage(
                EImages.google,
              ),
            ),
          ),
        ),
        const SizedBox(width: ESizes.spaceBtwItems),

        /// Facebook Button
        Container(
          padding: const EdgeInsets.all(ESizes.xs),
          decoration: BoxDecoration(
              border: Border.all(color: EColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () => {},
            // onPressed: () => controller.facebookSignIn(),
            icon: const Image(
              width: ESizes.iconMd + 4,
              height: ESizes.iconMd + 4,
              image: AssetImage(
                EImages.facebook,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
