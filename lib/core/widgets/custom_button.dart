import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_dimensions.dart';
import '../theme/app_typography.dart';
import '../utils/haptic_utils.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final IconData? icon;
  final Color? color;
  final bool isSecondary;

  const CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.color,
    this.isSecondary = false,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          HapticUtils.light();
          onPressed();
        },
        borderRadius: BorderRadius.circular(AppDimensions.radiusM),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.paddingL,
            vertical: AppDimensions.paddingM,
          ),
          decoration: BoxDecoration(
            color: isSecondary ? Colors.transparent : (color ?? AppColors.primaryAccent),
            borderRadius: BorderRadius.circular(AppDimensions.radiusM),
            border: isSecondary
                ? Border.all(color: color ?? AppColors.primaryAccent, width: 1.5)
                : null,
            boxShadow: isSecondary
                ? null
                : [
                    BoxShadow(
                      color: (color ?? AppColors.primaryAccent).withOpacity(0.3),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) ...[
                Icon(icon, color: Colors.white, size: 20),
                const SizedBox(width: AppDimensions.paddingS),
              ],
              Text(
                label,
                style: AppTypography.body.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
