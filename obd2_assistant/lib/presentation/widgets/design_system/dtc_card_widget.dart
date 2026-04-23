import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';

class DtcCardWidget extends StatelessWidget {
  final String code;
  final String description;
  final String status;
  final Color severityColor;
  final Color severityBg;
  final VoidCallback onAnalysisPressed;

  const DtcCardWidget({
    Key? key,
    required this.code,
    required this.description,
    required this.status,
    this.severityColor = AppColors.error,
    this.severityBg = const Color(0x1AEF4444),
    required this.onAnalysisPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: AppSpacing.md),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: AppSpacing.sm, vertical: AppSpacing.xs),
                  decoration: BoxDecoration(
                    color: severityBg,
                    borderRadius: BorderRadius.circular(AppRadii.sm),
                    border: Border.all(color: severityColor.withOpacity(0.2)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.warning_amber_rounded, size: 16, color: severityColor),
                      const SizedBox(width: AppSpacing.xs),
                      Text(
                        code,
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              color: severityColor,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Text(
                  status,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: AppColors.secondaryText,
                      ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.md),
            Text(
              description,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: AppSpacing.lg),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onAnalysisPressed,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: AppColors.onPrimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppRadii.md),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
                  elevation: 0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.psychology_outlined, size: 20),
                    const SizedBox(width: AppSpacing.sm),
                    const Text('View Full AI Analysis'),
                    const SizedBox(width: AppSpacing.xs),
                    const Icon(Icons.arrow_forward_ios_rounded, size: 14),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
