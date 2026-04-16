import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../widgets/design_system/sensor_tile_widget.dart';
import '../widgets/design_system/action_card_widget.dart';

class HomeDashboardScreen extends StatelessWidget {
  const HomeDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: AppSpacing.md),
              // Header
              _buildHeader(context),
              const SizedBox(height: AppSpacing.xl),
              
              // VIN Display
              _buildVinCard(context),
              const SizedBox(height: AppSpacing.lg),
              
              // Central Fault Indicator
              _buildFaultIndicator(context),
              const SizedBox(height: AppSpacing.xl),
              
              // Telemetry Grid
              Text(
                'Telemetry Dashboard',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: AppSpacing.md),
              _buildSensorGrid(),
              const SizedBox(height: AppSpacing.xl),
              
              // Navigation Cards
              Row(
                children: [
                  ActionCardWidget(
                    icon: Icons.medical_services_rounded,
                    title: 'Scan DTCs',
                    subtitle: 'View fault list',
                    tintColor: AppColors.primary,
                    onTap: () {},
                  ),
                  const SizedBox(width: AppSpacing.md),
                  ActionCardWidget(
                    icon: Icons.show_chart_rounded,
                    title: 'Live Trends',
                    subtitle: 'Real-time params',
                    tintColor: AppColors.accent,
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.xl),
              
              // Protocol Footer
              _buildProtocolFooter(context),
              const SizedBox(height: AppSpacing.lg),
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Smart OBD‑II',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppColors.success.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(AppRadii.sm),
                    border: Border.all(color: AppColors.success.withOpacity(0.2)),
                  ),
                  child: Text(
                    'ELM327 Active',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: AppColors.success,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                const SizedBox(width: AppSpacing.sm),
                Text(
                  'Toyota Corolla 2018',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: AppColors.secondaryText,
                      ),
                ),
              ],
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings_rounded, color: AppColors.secondaryText),
          style: IconButton.styleFrom(
            backgroundColor: AppColors.surface,
            shape: const CircleBorder(),
            side: const BorderSide(color: AppColors.divider),
          ),
        ),
      ],
    );
  }

  Widget _buildVinCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppRadii.lg),
        border: Border.all(color: AppColors.divider),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(AppSpacing.sm),
            decoration: BoxDecoration(
              color: AppColors.secondary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(AppRadii.md),
            ),
            child: const Icon(Icons.fingerprint_rounded, color: AppColors.secondary, size: 20),
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Vehicle Identification Number',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(color: AppColors.secondaryText),
                ),
                Text(
                  'JTDBR22E8XXXX7291',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const Icon(Icons.content_copy_rounded, size: 18, color: AppColors.secondaryText),
        ],
      ),
    );
  }

  Widget _buildFaultIndicator(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppRadii.lg),
        border: Border.all(color: AppColors.divider),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 64,
                height: 64,
                child: CircularProgressIndicator(
                  value: 0,
                  strokeWidth: 6,
                  backgroundColor: AppColors.divider,
                  valueColor: AlwaysStoppedAnimation<Color>(AppColors.success),
                ),
              ),
              const Icon(Icons.check_circle_rounded, color: AppColors.success, size: 32),
            ],
          ),
          const SizedBox(width: AppSpacing.lg),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '0 Active Faults',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  'Last scan 2 mins ago • Clean',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppRadii.full)),
              padding: const EdgeInsets.symmetric(horizontal: 16),
            ),
            child: const Text('Rescan'),
          ),
        ],
      ),
    );
  }

  Widget _buildSensorGrid() {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      mainAxisSpacing: AppSpacing.md,
      crossAxisSpacing: AppSpacing.md,
      childAspectRatio: 0.9,
      children: const [
        SensorTileWidget(
          icon: Icons.thermostat_rounded,
          title: 'Engine Temp',
          value: '92',
          unit: '°C',
          status: 'Optimal',
        ),
        SensorTileWidget(
          icon: Icons.speed_rounded,
          title: 'RPM',
          value: '2450',
          unit: 'rpm',
          status: 'Normal',
        ),
        SensorTileWidget(
          icon: Icons.battery_charging_full_rounded,
          title: 'Battery',
          value: '13.8',
          unit: 'V',
          status: 'Correct',
        ),
        SensorTileWidget(
          icon: Icons.shutter_speed_rounded,
          title: 'Speed',
          value: '0',
          unit: 'km/h',
          status: 'Idle',
          statusColor: AppColors.secondaryText,
        ),
        SensorTileWidget(
          icon: Icons.local_gas_station_rounded,
          title: 'Fuel Level',
          value: '42',
          unit: '%',
          status: 'Low',
          statusColor: AppColors.accent,
        ),
        SensorTileWidget(
          icon: Icons.analytics_rounded,
          title: 'Engine Load',
          value: '34',
          unit: '%',
          status: 'Normal',
        ),
      ],
    );
  }

  Widget _buildProtocolFooter(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg, vertical: AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.primaryText,
        borderRadius: BorderRadius.circular(AppRadii.lg),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Protocol: ISO 15765-4 (CAN)',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.white60),
              ),
              Text(
                'Sampling Rate: 5 Hz',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.white60),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(AppRadii.full),
            ),
            child: Text(
              'Bus Load: 3.2%',
              style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
