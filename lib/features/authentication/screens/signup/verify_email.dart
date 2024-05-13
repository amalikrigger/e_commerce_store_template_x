import 'package:e_commerce_store_template_x/common/widgets/success_screen/success_screen.dart';
import 'package:e_commerce_store_template_x/features/authentication/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key, this.email});

  final String? email;

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(VerifyEmailController());
    return Scaffold(
      /// Appbar close icon will first Logout the user & then redirect back to Login Screen()
      /// Reason: We will store the data when user enters the Register Button on Previous screen.
      /// Whenever the user opens the app, we will check if email is verified or not.
      /// If not verified we will always show this Verification screen.
      appBar: EAppBar(
        actions: [
          IconButton(
            onPressed: () => Get.offAll(
              () => const LoginScreen(),
            ),
            // onPressed: () => AuthenticationRepository.instance.logout(),
            icon: const Icon(
              CupertinoIcons.clear,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        // Padding to Give Default Equal Space on all sides in all screens.
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                image: const AssetImage(
                  EImages.deliveredEmailIllustration,
                ),
                width: EHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: ESizes.spaceBtwSections),

              /// Title, Email & SubTitle
              Text(
                ETexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ESizes.spaceBtwItems),
              Text(
                'support@gcoat.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ESizes.spaceBtwItems),
              Text(
                ETexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ESizes.spaceBtwSections),

              /// Continue Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    () => SuccessScreen(
                      image: EImages.staticSuccessIllustration,
                      title: ETexts.yourAccountCreatedTitle,
                      subTitle: ETexts.yourAccountCreatedSubTitle,
                      onPressed: () => Get.to(
                        () => const LoginScreen(),
                      ),
                    ),
                  ),
                  // onPressed: () => controller.checkEmailVerificationStatus(),
                  child: const Text(
                    ETexts.tContinue,
                  ),
                ),
              ),
              const SizedBox(height: ESizes.spaceBtwItems),

              /// Resend Email, You can also add timer
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () => {},
                  // onPressed: () => controller.sendEmailVerification(),
                  child: const Text(
                    ETexts.resendEmail,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
