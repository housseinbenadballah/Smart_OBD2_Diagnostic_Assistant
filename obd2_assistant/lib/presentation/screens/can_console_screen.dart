import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../widgets/design_system/terminal_view_widget.dart';

class CanConsoleScreen extends StatelessWidget {
  const CanConsoleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(context),
              const SizedBox(height: AppSpacing.xl),
              
              const TerminalViewWidget(
                logs: [
                  '14:32:05 > ATZ',
                  '14:32:05 < ELM327 v2.1',
                  '14:32:06 > AT SP 0',
                  '14:32:06 < OK',
                  '14:32:07 > 0100',
                  '14:32:07 < 41 00 BF BF B9 93',
                  '14:32:08 > 010C',
                  '14:32:08 < 41 0C 13 25',
                  '14:32:09 > 010D',
                  '14:32:09 < 41 0D 00',
                ],
              ),
              const SizedBox(height: AppSpacing.xl),
              
              Text(
                'Statistics Panel',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: AppSpacing.md),
              _buildStatsCard(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'CAN Console',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        Row(
          children: [
            _buildActionIcon(Icons.fiber_manual_record_rounded, AppColors.error),
            const SizedBox(width: AppSpacing.sm),
            _buildActionIcon(Icons.pause_rounded, AppColors.secondaryText),
            const SizedBox(width: AppSpacing.sm),
            _buildActionIcon(Icons.content_copy_rounded, AppColors.secondaryText),
            const SizedBox(width: AppSpacing.sm),
            _buildActionIcon(Icons.delete_outline_rounded, AppColors.error),
          ],
        ),
      ],
    );
  }

  Widget _buildActionIcon(IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.sm),
      decoration: BoxDecoration(
        color: AppColors.surface,
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.divider),
      ),
      child: Icon(icon, size: 18, color: color),
    );
  }

  Widget _buildStatsCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppRadii.lg),
        border: Border.all(color: AppColors.divider),
      ),
      child: Column(
        children: const [
          _StatRow(label: 'Protocol', value: 'ISO 15765-4 (11bit/500k)'),
          Divider(height: AppSpacing.lg),
          _StatRow(label: 'Frames Tx/Rx', value: '1,247 | 1,389'),
          Divider(height: AppSpacing.lg),
          _StatRow(label: 'CRC Errors', value: '2'),
          Divider(height: AppSpacing.lg),
          _StatRow(label: 'Avg R/T Delay', value: '112 ms'),
          Divider(height: AppSpacing.lg),
          _StatRow(label: 'Bus Load', value: '34%'),
        ],
      ),
    );
  }
}

class _StatRow extends StatelessWidget {
  final String label;
  final String value;
  const _StatRow({required this.label, required this.value});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: Theme.of(context).textTheme.bodySmall),
        Text(value, style: Theme.of(context).textTheme.labelLarge),
      ],
    );
  }
}
