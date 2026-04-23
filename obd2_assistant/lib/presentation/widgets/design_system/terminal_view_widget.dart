import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';

class TerminalViewWidget extends StatelessWidget {
  final List<String> logs;

  const TerminalViewWidget({
    Key? key,
    required this.logs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: const Color(0xFF0F172A), // Dark terminal background
        borderRadius: BorderRadius.circular(AppRadii.md),
        border: Border.all(color: AppColors.divider.withOpacity(0.1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: logs.map((log) {
          final isTx = log.contains('>');
          return Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Text(
              log,
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 12,
                color: isTx ? const Color(0xFF38BDF8) : const Color(0xFF94A3B8),
                height: 1.4,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
