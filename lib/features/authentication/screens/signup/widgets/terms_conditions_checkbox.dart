import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class ETermsAndConditionCheckbox extends StatelessWidget {
  const ETermsAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final controller = SignupController.instance;
    return Row(
      children: [
        // Wrap in a Sized box to remove extra padding
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: false,
            onChanged: (value) {},
          ),
          // Obx(
          //   () => Checkbox(
          //     value: controller.privacyPolicy.value,
          //     onChanged: (value) {
          //       controller.privacyPolicy.value = value!;
          //     },
          //   ),
          // ),
        ),
        const SizedBox(width: ESizes.md),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${ETexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: ETexts.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: EHelperFunctions.isDarkMode(context)
                          ? EColors.white
                          : EColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: EHelperFunctions.isDarkMode(context)
                          ? EColors.white
                          : EColors.primary,
                    ),
              ),
              TextSpan(
                  text: ' ${ETexts.and} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: ETexts.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: EHelperFunctions.isDarkMode(context)
                          ? EColors.white
                          : EColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: EHelperFunctions.isDarkMode(context)
                          ? EColors.white
                          : EColors.primary,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
