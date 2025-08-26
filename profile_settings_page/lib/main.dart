import 'package:flutter/material.dart';
import 'screens/profile_settings_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Settings',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF4F6EF7),
        scaffoldBackgroundColor: const Color(0xFFF5F7FB),
      ),
      home: const ProfileSettingsScreen(),
    );
  }
}
