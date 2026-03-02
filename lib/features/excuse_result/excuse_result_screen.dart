import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_dimensions.dart';
import '../../core/widgets/gradient_background.dart';
import '../../core/utils/haptic_utils.dart';
import 'excuse_result_controller.dart';
import 'widgets/excuse_card.dart';

class ExcuseResultScreen extends GetView<ExcuseResultController> {
  const ExcuseResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Excuse"),
      ),
      body: GradientBackground(
        child: Padding(
          padding: const EdgeInsets.all(AppDimensions.paddingL),
          child: Column(
            children: [
              const Spacer(),
              Obx(() => ExcuseCard(
                    excuse: controller.currentExcuse.value,
                    emoji: controller.category.emoji,
                    accentColor: controller.selectedType == 'funny'
                        ? AppColors.funnyColor
                        : AppColors.seriousColor,
                  )),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _ActionButton(
                    icon: Icons.refresh_rounded,
                    onPressed: () {
                      HapticUtils.medium();
                      controller.generateExcuse();
                    },
                    tooltip: "Regenerate",
                  ),
                  _ActionButton(
                    icon: Icons.copy_rounded,
                    onPressed: controller.copyExcuse,
                    tooltip: "Copy",
                  ),
                  _ActionButton(
                    icon: Icons.share_rounded,
                    onPressed: controller.shareExcuse,
                    tooltip: "Share",
                  ),
                ],
              ),
              const SizedBox(height: AppDimensions.paddingXL),
            ],
          ),
        ),
      ),
    );
  }
}

class _ActionButton extends StatefulWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final String tooltip;

  const _ActionButton({
    required this.icon,
    required this.onPressed,
    required this.tooltip,
  });

  @override
  State<_ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<_ActionButton> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton.filled(
          onPressed: () {
            if (widget.icon == Icons.refresh_rounded) {
              _controller.forward(from: 0);
            }
            widget.onPressed();
          },
          icon: RotationTransition(
            turns: _controller,
            child: Icon(widget.icon),
          ),
          style: IconButton.styleFrom(
            backgroundColor: AppColors.card,
            foregroundColor: AppColors.textPrimary,
            padding: const EdgeInsets.all(16),
            side: BorderSide(color: AppColors.primaryAccent.withOpacity(0.2)),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          widget.tooltip,
          style: const TextStyle(fontSize: 12, color: AppColors.textSecondary),
        ),
      ],
    );
  }
}
