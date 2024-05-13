import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../images/circular_image.dart';

class EUserProfileTile extends StatelessWidget {
  const EUserProfileTile({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const ECircularImage(
        image: EImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Coding with T',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: EColors.white),
      ),
      subtitle: Text(
        'support@codingwithT.com',
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: EColors.white),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Iconsax.edit,
          color: EColors.white,
        ),
      ),
    );
  }
}
