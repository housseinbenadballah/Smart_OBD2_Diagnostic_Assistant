import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';

class ActionCardWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color tintColor;
  final VoidCallback onTap;

  const ActionCardWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.tintColor,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(AppSpacing.lg),
          decoration: BoxDecoration(
            color: tintColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(AppRadii.lg),
            border: Border.all(color: tintColor.withOpacity(0.2)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(AppSpacing.sm),
                decoration: BoxDecoration(
                  color: tintColor.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(AppRadii.md),
                ),
                child: Icon(icon, color: tintColor, size: 24),
              ),
              const SizedBox(height: AppSpacing.lg),
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: tintColor,
                    ),
              ),
              const SizedBox(height: AppSpacing.xs),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      subtitle,
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: AppColors.secondaryText,
                          ),
                    ),
                  ),
                  Icon(Icons.chevron_right_rounded, size: 16, color: tintColor),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
