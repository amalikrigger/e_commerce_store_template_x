import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

/// A container widget with a primary color background and curved edges.
class EPrimaryHeaderContainer extends StatelessWidget {
  /// Create a container with a primary color background and curved edges.
  ///
  /// Parameters:
  ///   - child: The widget to be placed inside the container.
  const EPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ECurvedEdgesWidget(
      child: Container(
        color: EColors.primary,
        padding: EdgeInsets.zero,
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: ECircularContainer(
                backgroundColor: EColors.textWhite.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: ECircularContainer(
                backgroundColor: EColors.textWhite.withOpacity(0.1),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
