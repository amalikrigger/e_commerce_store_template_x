// import 'package:flutter/material.dart';
//
// import '../../../../utils/constants/colors.dart';
// import '../../../../utils/constants/sizes.dart';
//
// class ECouponCode extends StatelessWidget {
//   const ECouponCode({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
//     return TRoundedContainer(
//       showBorder: true,
//       backgroundColor: isDark ? EColors.dark : EColors.white,
//       padding: const EdgeInsets.only(
//           top: ESizes.sm, bottom: ESizes.sm, right: ESizes.sm, left: ESizes.md),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           /// TextField
//           Flexible(
//             child: TextFormField(
//               expands: false,
//               decoration: const InputDecoration(
//                 border: InputBorder.none,
//                 focusedBorder: InputBorder.none,
//                 enabledBorder: InputBorder.none,
//                 errorBorder: InputBorder.none,
//                 disabledBorder: InputBorder.none,
//                 hintText: 'Have a promo code? Enter here',
//               ),
//             ),
//           ),
//
//           /// Button
//           SizedBox(
//             width: 80,
//             child: ElevatedButton(
//               onPressed: () {},
//               style: ElevatedButton.styleFrom(
//                 foregroundColor: isDark
//                     ? EColors.white.withOpacity(0.5)
//                     : EColors.dark.withOpacity(0.5),
//                 backgroundColor: Colors.grey.withOpacity(0.2),
//                 side: BorderSide(color: Colors.grey.withOpacity(0.1)),
//               ),
//               child: const Text('Apply'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
