import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/theme/app_theme.dart';
import 'presentation/providers/diagnostic_provider.dart';
import 'presentation/screens/main_screen.dart';

void main() {
  runApp(const OBD2AssistantApp());
}

class OBD2AssistantApp extends StatelessWidget {
  const OBD2AssistantApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DiagnosticProvider()),
      ],
      child: MaterialApp(
        title: 'OBD2 Assistant',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        home: const MainScreen(),
      ),
    );
  }
}
