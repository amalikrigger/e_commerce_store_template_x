import 'package:e_commerce_store_template_x/features/authentication/screens/signup/verify_email.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/validators/validation.dart';
import 'terms_conditions_checkbox.dart';

class ESignupForm extends StatelessWidget {
  const ESignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      // key: controller.signupFormKey,
      child: Column(
        children: [
          const SizedBox(height: ESizes.spaceBtwSections),

          /// First & Last Name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  // controller: controller.firstName,
                  validator: (value) =>
                      EValidator.validateEmptyText('First name', value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: ETexts.firstName,
                    prefixIcon: Icon(
                      Iconsax.user,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: ESizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  // controller: controller.lastName,
                  validator: (value) =>
                      EValidator.validateEmptyText('Last name', value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: ETexts.lastName,
                    prefixIcon: Icon(
                      Iconsax.user,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: ESizes.spaceBtwInputFields),

          /// Username
          TextFormField(
            // controller: controller.username,
            validator: EValidator.validateUsername,
            expands: false,
            decoration: const InputDecoration(
              labelText: ETexts.username,
              prefixIcon: Icon(
                Iconsax.user_edit,
              ),
            ),
          ),
          const SizedBox(height: ESizes.spaceBtwInputFields),

          /// Email
          TextFormField(
            // controller: controller.email,
            validator: EValidator.validateEmail,
            decoration: const InputDecoration(
              labelText: ETexts.email,
              prefixIcon: Icon(
                Iconsax.direct,
              ),
            ),
          ),
          const SizedBox(height: ESizes.spaceBtwInputFields),

          /// Phone Number
          TextFormField(
            // controller: controller.phoneNumber,
            validator: EValidator.validatePhoneNumber,
            decoration: const InputDecoration(
              labelText: ETexts.phoneNo,
              prefixIcon: Icon(
                Iconsax.call,
              ),
            ),
          ),
          const SizedBox(height: ESizes.spaceBtwInputFields),

          /// Password
          TextFormField(
            // controller: controller.password,
            validator: EValidator.validatePassword,
            // obscureText: controller.hidePassword.value,
            decoration: InputDecoration(
              labelText: ETexts.password,
              prefixIcon: const Icon(Iconsax.password_check),
              suffixIcon: IconButton(
                onPressed: () => {},
                // onPressed: () => controller.hidePassword.value =
                //     !controller.hidePassword.value,
                icon: const Icon(Iconsax.eye_slash),
              ),
            ),
          ),
          // Obx(
          //   () => TextFormField(
          //     // controller: controller.password,
          //     validator: EValidator.validatePassword,
          //     // obscureText: controller.hidePassword.value,
          //     decoration: InputDecoration(
          //       labelText: ETexts.password,
          //       prefixIcon: const Icon(Iconsax.password_check),
          //       suffixIcon: IconButton(
          //         onPressed: () => {},
          //         // onPressed: () => controller.hidePassword.value =
          //         //     !controller.hidePassword.value,
          //         icon: const Icon(Iconsax.eye_slash),
          //       ),
          //     ),
          //   ),
          // ),
          const SizedBox(height: ESizes.spaceBtwSections),

          /// Terms&Conditions Checkbox
          const ETermsAndConditionCheckbox(),
          const SizedBox(height: ESizes.spaceBtwSections),

          /// Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(
                () => const VerifyEmailScreen(),
              ),
              // onPressed: () => controller.signup(),
              child: const Text(
                ETexts.createAccount,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
