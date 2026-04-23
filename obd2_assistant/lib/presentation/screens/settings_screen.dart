import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

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
              Text(
                'Settings',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const SizedBox(height: AppSpacing.xl),
              
              _buildSectionTitle(context, '🔌 ELM327 Connection'),
              _buildConnectionCard(context),
              const SizedBox(height: AppSpacing.xl),
              
              _buildSectionTitle(context, '🧠 AI Configuration (Groq)'),
              _buildAiConfigCard(context),
              const SizedBox(height: AppSpacing.xl),
              
              _buildSectionTitle(context, '📊 Display Preferences'),
              _buildPreferencesCard(context),
              const SizedBox(height: AppSpacing.xl),
              
              _buildSectionTitle(context, 'ℹ️ About'),
              _buildAboutCard(context),
              const SizedBox(height: AppSpacing.xl),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.md, left: 4),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleSmall?.copyWith(color: AppColors.secondaryText),
      ),
    );
  }

  Widget _buildConnectionCard(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppRadii.lg),
        border: Border.all(color: AppColors.divider),
      ),
      child: Column(
        children: [
          _buildListTile(context, 'OBDII-Bluetooth', 'Signal: 📶 Strong', isConnected: true),
          const Divider(height: 1, indent: 16, endIndent: 16),
          _buildListTile(context, 'ELM327-V2', 'Signal: 📶 Fair'),
          const Divider(height: 1, indent: 16, endIndent: 16),
          Padding(
            padding: const EdgeInsets.all(AppSpacing.md),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppRadii.md)),
                ),
                child: const Text('Scan for Devices'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAiConfigCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppRadii.lg),
        border: Border.all(color: AppColors.divider),
      ),
      child: Column(
        children: [
          _buildTextField(context, 'Model', 'Llama 3 70B (Groq)'),
          const SizedBox(height: AppSpacing.md),
          _buildTextField(context, 'API Key', '••••••••••••••••', isPassword: true),
        ],
      ),
    );
  }

  Widget _buildPreferencesCard(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppRadii.lg),
        border: Border.all(color: AppColors.divider),
      ),
      child: Column(
        children: [
          _buildSwitchTile('Show raw frames (console)', true),
          const Divider(height: 1, indent: 16, endIndent: 16),
          _buildSwitchTile('Enable Debug Mode', false),
        ],
      ),
    );
  }

  Widget _buildAboutCard(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppRadii.lg),
        border: Border.all(color: AppColors.divider),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Smart OBD‑II Diagnostic Assistant',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          Text(
            'Final Year Project - Embedded Systems Engineering - 2026',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 4),
          Text(
            'Supervisor: Pr. [Name]',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 16),
          Text(
            'Version 1.0.0',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(color: AppColors.secondaryText),
          ),
        ],
      ),
    );
  }

  Widget _buildListTile(BuildContext context, String title, String subtitle, {bool isConnected = false}) {
    return ListTile(
      title: Text(title, style: Theme.of(context).textTheme.bodyLarge),
      subtitle: Text(subtitle, style: Theme.of(context).textTheme.bodySmall),
      trailing: isConnected 
        ? const Icon(Icons.check_circle_rounded, color: AppColors.success)
        : null,
      onTap: () {},
    );
  }

  Widget _buildTextField(BuildContext context, String label, String value, {bool isPassword = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Theme.of(context).textTheme.labelSmall),
        const SizedBox(height: 8),
        TextField(
          controller: TextEditingController(text: value),
          obscureText: isPassword,
          readOnly: true,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.background,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppRadii.md),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
        ),
      ],
    );
  }

  Widget _buildSwitchTile(String title, bool value) {
    return SwitchListTile(
      title: Text(title, style: const TextStyle(fontSize: 14)),
      value: value,
      onChanged: (val) {},
      activeColor: AppColors.primary,
    );
  }
}
