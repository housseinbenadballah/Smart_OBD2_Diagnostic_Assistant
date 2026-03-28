import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/theme/app_colors.dart';
import '../providers/diagnostic_provider.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/glass_card.dart';
import '../widgets/primary_button.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _dtcController = TextEditingController();
  final _carModelController = TextEditingController();

  @override
  void dispose() {
    _dtcController.dispose();
    _carModelController.dispose();
    super.dispose();
  }

  void _analyze() {
    FocusScope.of(context).unfocus();
    context.read<DiagnosticProvider>().analyze(
          _dtcController.text.trim(),
          _carModelController.text.trim(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background decorative circles
          Positioned(
            top: -100,
            right: -100,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    AppColors.primary.withOpacity(0.15),
                    AppColors.transparent,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -50,
            left: -100,
            child: Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    AppColors.accent.withOpacity(0.1),
                    AppColors.transparent,
                  ],
                ),
              ),
            ),
          ),
          
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: AppSpacing.md),
                  Text(
                    'OBD2 Assistant',
                    style: Theme.of(context).textTheme.displayMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    'Your Smart Diagnostic Companion',
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: AppSpacing.xl),
                  
                  CustomTextField(
                    controller: _dtcController,
                    hintText: 'Enter DTC Code (e.g. P0301)',
                    icon: Icons.code_rounded,
                  ),
                  const SizedBox(height: AppSpacing.md),
                  CustomTextField(
                    controller: _carModelController,
                    hintText: 'Enter Car Model (e.g. Renault Clio)',
                    icon: Icons.directions_car_rounded,
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  
                  Consumer<DiagnosticProvider>(
                    builder: (context, provider, child) {
                      return PrimaryButton(
                        text: 'Analyze with IA',
                        isLoading: provider.isLoading,
                        onPressed: _analyze,
                      );
                    },
                  ),
                  
                  const SizedBox(height: AppSpacing.xl),
                  
                  Consumer<DiagnosticProvider>(
                    builder: (context, provider, child) {
                      if (provider.error != null) {
                        return GlassCard(
                          child: Text(
                            provider.error!,
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: AppColors.error,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        );
                      }
                      
                      if (provider.result != null) {
                        final res = provider.result!;
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            _buildResultCard(
                              context,
                              title: 'Interpretation',
                              content: res.interpretation,
                              icon: Icons.info_outline_rounded,
                            ),
                            const SizedBox(height: AppSpacing.md),
                            _buildResultCard(
                              context,
                              title: 'Possible Causes',
                              content: res.possibleCauses,
                              icon: Icons.warning_amber_rounded,
                            ),
                            const SizedBox(height: AppSpacing.md),
                            _buildResultCard(
                              context,
                              title: 'Troubleshooting Steps',
                              content: res.troubleshootingSteps,
                              icon: Icons.build_circle_outlined,
                            ),
                          ],
                        );
                      }
                      
                      return const SizedBox.shrink();
                    },
                  ),
                  const SizedBox(height: 100), // Bottom padding
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildResultCard(BuildContext context, {required String title, required String content, required IconData icon}) {
    return GlassCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: AppColors.primary, size: 24),
              const SizedBox(width: AppSpacing.sm),
              Expanded(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.sm),
          const Divider(color: AppColors.divider),
          const SizedBox(height: AppSpacing.sm),
          Text(
            content,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
