import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/device/device_utility.dart';
import '../../../utils/helpers/helper_functions.dart';

class ETabBar extends StatelessWidget implements PreferredSizeWidget {
  const ETabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Material(
      color: dark
          ? EColors.black
          : EColors.white, // Background color of the tab bar
      child: TabBar(
        tabs: tabs, // List of tabs
        isScrollable: true, // Enable scrollable tabs
        indicatorColor: EColors.primary, //
        tabAlignment: TabAlignment.start, // Color of the tab indicator
        labelColor: dark
            ? EColors.white
            : EColors.primary, // Color of the selected tab label
        unselectedLabelColor:
            EColors.darkGrey, // Color of unselected tab labels
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
      EDeviceUtils.getAppBarHeight()); // Preferred size of the tab bar
}
