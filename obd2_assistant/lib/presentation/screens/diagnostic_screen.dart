import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../widgets/design_system/dtc_card_widget.dart';

class DiagnosticScreen extends StatelessWidget {
  const DiagnosticScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.only(
                left: AppSpacing.lg,
                right: AppSpacing.lg,
                top: AppSpacing.md,
                bottom: 120, // Space for button
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeader(context),
                  const SizedBox(height: AppSpacing.lg),
                  _buildStatusOverview(context),
                  const SizedBox(height: AppSpacing.xl),
                  Text(
                    'Detected Faults',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: AppSpacing.md),
                  DtcCardWidget(
                    code: 'P0301',
                    description: 'Cylinder 1 Misfire Detected',
                    status: 'Confirmed',
                    onAnalysisPressed: () {},
                  ),
                  DtcCardWidget(
                    code: 'P0420',
                    description: 'Catalyst System Efficiency Below Threshold (Bank 1)',
                    status: 'Pending',
                    severityColor: AppColors.accent,
                    severityBg: AppColors.accent.withOpacity(0.1),
                    onAnalysisPressed: () {},
                  ),
                  _buildPendingInfo(context),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: _buildScanButtonLayout(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Diagnostic',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(height: 4),
            Text(
              'Last scan: Today, 14:32',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.history_rounded, color: AppColors.secondaryText),
          style: IconButton.styleFrom(
            backgroundColor: AppColors.surface,
            shape: const CircleBorder(),
          ),
        ),
      ],
    );
  }

  Widget _buildStatusOverview(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.error.withOpacity(0.1),
        borderRadius: BorderRadius.circular(AppRadii.md),
        border: Border.all(color: AppColors.error.withOpacity(0.2)),
      ),
      child: Row(
        children: [
          const Icon(Icons.error_outline_rounded, color: AppColors.error, size: 20),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Text(
              '2 fault codes detected',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.error,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          Text(
            'Priority: High',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(color: AppColors.error),
          ),
        ],
      ),
    );
  }

  Widget _buildPendingInfo(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppRadii.lg),
        border: Border.all(color: AppColors.divider),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.lightbulb_rounded, color: AppColors.onSurface, size: 24),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'What are Pending Codes?',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  'Pending codes indicate a fault was detected once, but needs to reoccur during the next drive cycle to be confirmed.',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(height: 1.4),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildScanButtonLayout(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: AppColors.surface,
        border: Border(top: BorderSide(color: AppColors.divider)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 56),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppRadii.md)),
          elevation: 0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.refresh_rounded),
            SizedBox(width: AppSpacing.sm),
            Text('Run Full System Scan', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
