import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_dimensions.dart';
import '../../../app/theme/app_typography.dart';

class ExcuseCard extends StatelessWidget {
  final String excuse;
  final String emoji;
  final Color accentColor;

  const ExcuseCard({
    super.key,
    required this.excuse,
    required this.emoji,
    this.accentColor = AppColors.primaryAccent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(minHeight: 300),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(AppDimensions.radiusXL),
        border: Border.all(
          color: accentColor.withOpacity(0.3),
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: accentColor.withOpacity(0.15),
            blurRadius: 20,
            spreadRadius: 2,
          ),
        ],
      ),
      padding: const EdgeInsets.all(AppDimensions.paddingXL),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            emoji,
            style: const TextStyle(fontSize: 48),
          ),
          const SizedBox(height: 32),
          Text(
            excuse,
            style: AppTypography.excuseText,
            textAlign: TextAlign.center,
          )
              .animate(key: ValueKey(excuse))
              .fadeIn(duration: 600.ms)
              .scale(begin: const Offset(0.9, 0.9), end: const Offset(1, 1)),
        ],
      ),
    )
        .animate(key: ValueKey(excuse))
        .shimmer(duration: 1.seconds, color: accentColor.withOpacity(0.1))
        .shake(duration: 400.ms, hz: 4);
  }
}
