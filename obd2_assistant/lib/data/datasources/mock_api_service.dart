import '../../domain/entities/diagnostic_result.dart';

class MockApiService {
  Future<DiagnosticResult> analyzeDtc(String dtcCode, String carModel) async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 2));

    if (dtcCode.isEmpty || carModel.isEmpty) {
      throw Exception('Please provide both DTC code and car model.');
    }

    if (dtcCode.toUpperCase() == 'P0301') {
      return DiagnosticResult(
        interpretation: 'Cylinder 1 Misfire Detected. The engine control module (ECM) has detected a misfire in cylinder number 1.',
        possibleCauses: '• Faulty spark plug or wire\n• Faulty coil (pack)\n• Defective oxygen sensor(s)\n• Fuel injector issue\n• Burned exhaust valve\n• Poor electrical connection',
        troubleshootingSteps: '1. Inspect the spark plug and replace if worn.\n2. Check the ignition coil and verify its operation.\n3. Verify fuel injector operation in cylinder 1.\n4. Perform a compression test on cylinder 1.',
      );
    }

    // Default mock response for other codes
    return DiagnosticResult(
      interpretation: "The code $dtcCode for $carModel indicates a generic powertrain issue. This might affect your vehicle's performance or emissions.",
      possibleCauses: '• Sensor malfunction\n• Wiring degradation\n• ECU temporary glitch',
      troubleshootingSteps: '1. Clear the code and road test.\n2. Inspect wiring harness related to the affected module.\n3. Check relevant fuses.',
    );
  }
}
