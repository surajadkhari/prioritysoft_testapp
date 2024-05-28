import 'package:flutter/material.dart';
import 'package:priorityshoft_testapp/features/home/presentation/home.dart';
import 'package:priorityshoft_testapp/theme/app_theme.dart';

class ShoeApp extends StatelessWidget {
  const ShoeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      home: const DiscoverScreen(),
    );
  }
}
