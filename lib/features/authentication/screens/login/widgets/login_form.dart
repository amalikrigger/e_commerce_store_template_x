import 'package:e_commerce_store_template_x/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:e_commerce_store_template_x/features/authentication/screens/signup/signup.dart';
import 'package:e_commerce_store_template_x/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/validators/validation.dart';

class ELoginForm extends StatelessWidget {
  const ELoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(LoginController());
    return Form(
      // key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: ESizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              // controller: controller.email,
              validator: EValidator.validateEmail,
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: ETexts.email,
              ),
            ),
            const SizedBox(height: ESizes.spaceBtwInputFields),

            /// Password
            TextFormField(
              // obscureText: controller.hidePassword.value,
              // controller: controller.password,
              validator: (value) =>
                  EValidator.validateEmptyText('Password', value),
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
            //     // obscureText: controller.hidePassword.value,
            //     // controller: controller.password,
            //     validator: (value) =>
            //         EValidator.validateEmptyText('Password', value),
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
            const SizedBox(height: ESizes.spaceBtwInputFields / 2),

            /// Remember Me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember Me
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Checkbox(
                      value: false,
                      // value: controller.rememberMe.value,
                      onChanged: (value) => {},
                      // onChanged: (value) =>
                      //     controller.rememberMe.value = value!,
                    ),
                    // Obx(
                    //   () => Checkbox(
                    //     value: false,
                    //     // value: controller.rememberMe.value,
                    //     onChanged: (value) => {},
                    //     // onChanged: (value) =>
                    //     //     controller.rememberMe.value = value!,
                    //   ),
                    // ),
                    const Text(ETexts.rememberMe),
                  ],
                ),

                /// Forget Password
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPasswordScreen()),
                  child: const Text(
                    ETexts.forgetPassword,
                  ),
                ),
              ],
            ),
            const SizedBox(height: ESizes.spaceBtwSections),

            /// Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(
                  () => const NavigationMenu(),
                ),
                // onPressed: () => controller.emailAndPasswordSignIn(),
                child: const Text(
                  ETexts.signIn,
                ),
              ),
            ),
            const SizedBox(height: ESizes.spaceBtwItems),

            /// Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignupScreen()),
                child: const Text(
                  ETexts.createAccount,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
