import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../widgets/design_system/analysis_section_widget.dart';

class AiAnalysisDetailScreen extends StatelessWidget {
  final String dtcCode;

  const AiAnalysisDetailScreen({
    Key? key,
    required this.dtcCode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'AI Analysis',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              'Code: $dtcCode',
              style: Theme.of(context).textTheme.labelMedium?.copyWith(color: AppColors.error),
            ),
          ],
        ),
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: AppColors.error.withOpacity(0.1),
              borderRadius: BorderRadius.circular(AppRadii.full),
              border: Border.all(color: AppColors.error.withOpacity(0.2)),
            ),
            alignment: Alignment.center,
            child: Text(
              'Critical',
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: AppColors.error,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(AppSpacing.lg),
              decoration: BoxDecoration(
                color: AppColors.surface,
                borderRadius: BorderRadius.circular(AppRadii.lg),
                border: Border.all(color: AppColors.divider),
              ),
              child: Column(
                children: [
                  AnalysisSectionWidget(
                    title: 'Summary',
                    icon: Icons.description_rounded,
                    iconColor: AppColors.primary,
                    iconBg: AppColors.primary.withOpacity(0.1),
                    child: Text(
                      'Cylinder 1 Misfire detected. This means the engine\'s computer has detected that the first cylinder is not firing properly, which can cause reduced engine performance, increased fuel consumption, and potential damage to the catalytic converter if left unaddressed.',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(height: 1.5, color: AppColors.primaryText),
                    ),
                  ),
                  const Divider(height: AppSpacing.xl, color: AppColors.divider),
                  AnalysisSectionWidget(
                    title: 'Probable Causes',
                    icon: Icons.search_rounded,
                    iconColor: AppColors.accent,
                    iconBg: AppColors.accent.withOpacity(0.1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        _CauseItem(text: '1. Worn out spark plug (Most Likely)'),
                        _CauseItem(text: '2. Faulty ignition coil'),
                        _CauseItem(text: '3. Clogged fuel injector'),
                        _CauseItem(text: '4. Vacuum leak near cylinder 1'),
                      ],
                    ),
                  ),
                  const Divider(height: AppSpacing.xl, color: AppColors.divider),
                  AnalysisSectionWidget(
                    title: 'Recommended Steps',
                    icon: Icons.build_rounded,
                    iconColor: AppColors.success,
                    iconBg: AppColors.success.withOpacity(0.1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        _StepItem(text: 'Inspect and replace the spark plug in cylinder 1.'),
                        _StepItem(text: 'Swap the ignition coil with cylinder 2 to see if the fault follows the coil.'),
                        _StepItem(text: 'Check electrical connections to the fuel injector.'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.xl),
            _buildFreezeFrameSection(context),
            const SizedBox(height: AppSpacing.xl),
            _buildAiMetrics(context),
            const SizedBox(height: AppSpacing.xl),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.picture_as_pdf_rounded),
                    label: const Text('Export PDF'),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppRadii.md)),
                    ),
                  ),
                ),
                const SizedBox(width: AppSpacing.md),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.save_rounded),
                    label: const Text('Save Report'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppRadii.md)),
                      elevation: 0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.xl),
          ],
        ),
      ),
    );
  }

  Widget _buildFreezeFrameSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Freeze Frame Data',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: AppSpacing.md),
        Container(
          padding: const EdgeInsets.all(AppSpacing.md),
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(AppRadii.lg),
            border: Border.all(color: AppColors.divider),
          ),
          child: Column(
            children: const [
              _FreezeFrameRow(label: 'Engine RPM', value: '2,450 rpm'),
              Divider(height: 1, thickness: 0.5),
              _FreezeFrameRow(label: 'Calculated Load', value: '34.2 %'),
              Divider(height: 1, thickness: 0.5),
              _FreezeFrameRow(label: 'Engine Coolant Temp', value: '87 °C'),
              Divider(height: 1, thickness: 0.5),
              _FreezeFrameRow(label: 'Short Term Fuel Trim', value: '-2.1 %'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAiMetrics(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.sm),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildMetric(context, Icons.timer_outlined, 'AI Response Time:', '2.3 s'),
          _buildMetric(context, Icons.vpn_key_outlined, 'Tokens Used:', '342 / 4096'),
        ],
      ),
    );
  }

  Widget _buildMetric(BuildContext context, IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(icon, size: 14, color: AppColors.secondaryText),
        const SizedBox(width: 4),
        Text(
          '$label $value',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 10, color: AppColors.secondaryText),
        ),
      ],
    );
  }
}

class _CauseItem extends StatelessWidget {
  final String text;
  const _CauseItem({required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(text, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.primaryText)),
    );
  }
}

class _StepItem extends StatelessWidget {
  final String text;
  const _StepItem({required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• ', style: TextStyle(fontWeight: FontWeight.bold)),
          Expanded(
            child: Text(text, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.primaryText)),
          ),
        ],
      ),
    );
  }
}

class _FreezeFrameRow extends StatelessWidget {
  final String label;
  final String value;
  const _FreezeFrameRow({required this.label, required this.value});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.secondaryText)),
          Text(value, style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
