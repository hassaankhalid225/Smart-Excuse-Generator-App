import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../theme/app_dimensions.dart';

class AnimatedCard extends StatelessWidget {
  final Widget child;
  final Duration delay;
  final VoidCallback? onTap;

  const AnimatedCard({
    super.key,
    required this.child,
    this.delay = Duration.zero,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: child
          .animate(delay: delay)
          .fadeIn(duration: 400.ms)
          .slideY(begin: 0.2, end: 0, curve: Curves.easeOutQuad),
    );
  }
}
