import 'package:e_commerce_store_template_x/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/validators/validation.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(ForgetPasswordController());
    return Scaffold(
      /// Custom Appbar
      appBar: EAppBar(
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              CupertinoIcons.clear,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Headings
            Text(
              ETexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: ESizes.spaceBtwItems),
            Text(
              ETexts.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: ESizes.spaceBtwSections * 2),

            /// Text field
            Form(
              // key: controller.forgetPasswordFormKey,
              child: TextFormField(
                // controller: controller.email,
                validator: EValidator.validateEmail,
                decoration: const InputDecoration(
                  labelText: ETexts.email,
                  prefixIcon: Icon(
                    Iconsax.direct_right,
                  ),
                ),
              ),
            ),
            const SizedBox(height: ESizes.spaceBtwSections),

            /// Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(
                  () => const ResetPasswordScreen(),
                ),
                // onPressed: () => controller.sendPasswordResetEmail(),
                child: const Text(ETexts.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
