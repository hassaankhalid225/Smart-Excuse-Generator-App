import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_typography.dart';
import '../../core/constants/app_constants.dart';
import '../../core/widgets/gradient_background.dart';
import 'splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo placeholder / Icon
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.primaryAccent.withOpacity(0.1),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.primaryAccent.withOpacity(0.5),
                    width: 2,
                  ),
                ),
                child: const Icon(
                  Icons.electric_bolt_rounded,
                  size: 64,
                  color: AppColors.primaryAccent,
                ),
              )
                  .animate()
                  .fadeIn(duration: 800.ms)
                  .scale(begin: const Offset(0.5, 0.5), end: const Offset(1, 1), curve: Curves.elasticOut)
                  .then()
                  .shimmer(duration: 1200.ms),

              const SizedBox(height: 24),

              Text(
                AppConstants.appName,
                style: AppTypography.display,
              ).animate().fadeIn(delay: 400.ms, duration: 800.ms).slideY(begin: 0.5, end: 0),

              const SizedBox(height: 8),

              Text(
                AppConstants.tagline,
                style: AppTypography.subtitleItalic,
              ).animate().fadeIn(delay: 800.ms, duration: 800.ms),
            ],
          ),
        ),
      ),
    );
  }
}
