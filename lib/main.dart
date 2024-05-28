import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:priorityshoft_testapp/app/app.dart';
import 'package:priorityshoft_testapp/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ShoeApp());
}
