// import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';
//
// import '../../../../utils/constants/colors.dart';
// import '../../../../utils/constants/sizes.dart';
// import '../../icons/t_circular_icon.dart';
//
// class EProductQuantityWithAddRemoveButton extends StatelessWidget {
//   const EProductQuantityWithAddRemoveButton({
//     super.key,
//     required this.add,
//     this.width = 40,
//     this.height = 40,
//     this.iconSize,
//     required this.remove,
//     required this.quantity,
//     this.addBackgroundColor = EColors.black,
//     this.removeBackgroundColor = EColors.darkGrey,
//     this.addForegroundColor = EColors.white,
//     this.removeForegroundColor = EColors.white,
//   });
//
//   final VoidCallback? add, remove;
//   final int quantity;
//   final double width, height;
//   final double? iconSize;
//   final Color addBackgroundColor, removeBackgroundColor;
//   final Color addForegroundColor, removeForegroundColor;
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         TCircularIcon(
//           icon: Iconsax.minus,
//           onPressed: remove,
//           width: width,
//           height: height,
//           size: iconSize,
//           color: removeForegroundColor,
//           backgroundColor: removeBackgroundColor,
//         ),
//         const SizedBox(width: ESizes.spaceBtwItems),
//         Text(quantity.toString(),
//             style: Theme.of(context).textTheme.titleSmall),
//         const SizedBox(width: ESizes.spaceBtwItems),
//         TCircularIcon(
//           icon: Iconsax.add,
//           onPressed: add,
//           width: width,
//           height: height,
//           size: iconSize,
//           color: addForegroundColor,
//           backgroundColor: addBackgroundColor,
//         ),
//       ],
//     );
//   }
// }
