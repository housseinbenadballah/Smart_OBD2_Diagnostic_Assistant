import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class GlassCard extends StatelessWidget {
  final Widget child;
  final double blur;
  final double radius;
  final EdgeInsets padding;
  final double borderOpacity;

  const GlassCard({
    Key? key,
    required this.child,
    this.blur = 15.0,
    this.radius = AppRadii.lg,
    this.padding = const EdgeInsets.all(AppSpacing.lg),
    this.borderOpacity = 0.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          padding: padding,
          decoration: BoxDecoration(
            color: AppColors.surface, // Comes with 0xCC opacity (80%)
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(
              color: AppColors.divider.withOpacity(borderOpacity),
              width: 1.0,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: child,
        ),
      ),
    );
  }
}
