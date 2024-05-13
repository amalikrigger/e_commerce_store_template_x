import 'package:flutter/material.dart';

import 'curved_edges.dart';

/// Widget that adds curved edges to its child using a custom clipper.
class ECurvedEdgesWidget extends StatelessWidget {
  /// Create a widget with curved edges.
  const ECurvedEdgesWidget({
    super.key,
    required this.child,
  });

  /// The child widget to be wrapped with curved edges.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ECustomCurvedEdges(),
      child: child,
    );
  }
}
