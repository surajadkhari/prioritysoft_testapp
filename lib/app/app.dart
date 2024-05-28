import 'package:flutter/material.dart';
import 'package:priorityshoft_testapp/features/home/presentation/home.dart';

class ShoeApp extends StatelessWidget {
  const ShoeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DiscoverScreen(),
    );
  }
}
