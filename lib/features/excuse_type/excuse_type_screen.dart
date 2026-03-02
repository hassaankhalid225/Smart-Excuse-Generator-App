import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_dimensions.dart';
import '../../app/theme/app_typography.dart';
import '../../core/widgets/gradient_background.dart';
import 'excuse_type_controller.dart';
import 'widgets/type_option_card.dart';

class ExcuseTypeScreen extends GetView<ExcuseTypeController> {
  const ExcuseTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.category.title),
      ),
      body: GradientBackground(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDimensions.paddingL),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                controller.category.emoji,
                style: const TextStyle(fontSize: 64),
              ),
              const SizedBox(height: 24),
              Text(
                "What kind of excuse do you need?",
                style: AppTypography.heading,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48),
              Row(
                children: [
                  TypeOptionCard(
                    title: "😄 Funny",
                    description: "Light-hearted & creative",
                    icon: Icons.sentiment_very_satisfied_rounded,
                    gradient: AppColors.funnyGradient,
                    onTap: () => controller.selectType('funny'),
                  ),
                  const SizedBox(width: AppDimensions.paddingM),
                  TypeOptionCard(
                    title: "🎯 Serious",
                    description: "Professional & believable",
                    icon: Icons.work_rounded,
                    gradient: AppColors.seriousGradient,
                    onTap: () => controller.selectType('serious'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
