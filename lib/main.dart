import 'package:five_o_four/dashboard/dashboard.dart';
import 'package:five_o_four/dashboard/onboard/signup_screen.dart';
import 'package:flutter/material.dart';
import 'theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '504 Essential Words',
      theme: AppTheme().lightTheme,
      darkTheme: AppTheme().darkTheme,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}
  // scaffoldBackgroundColor: const Color(0xFFF6F9F9),