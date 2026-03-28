import 'package:flutter/material.dart';
import '../../domain/entities/diagnostic_result.dart';
import '../../data/datasources/mock_api_service.dart';

class DiagnosticProvider extends ChangeNotifier {
  final MockApiService _apiService = MockApiService();

  DiagnosticResult? _result;
  bool _isLoading = false;
  String? _error;

  DiagnosticResult? get result => _result;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> analyze(String dtcCode, String carModel) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _result = await _apiService.analyzeDtc(dtcCode, carModel);
    } catch (e) {
      _error = e.toString().replaceAll('Exception: ', '');
      _result = null;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void reset() {
    _result = null;
    _error = null;
    notifyListeners();
  }
}
