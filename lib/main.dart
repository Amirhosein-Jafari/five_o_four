import 'package:five_o_four/screens/home_screen.dart';
import 'package:five_o_four/screens/onboard/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
  // scaffoldBackgroundColor: const Color(0xFFF6F9F9),
  // static const Color primaryColor = Color(0xFF7986CB); // Purple
  // static const Color primary = Color(0xFFAEB8E0); // Light purple
  // static const Color primaryDark = Color(0xFF495A8A); // Dark purple

  // static const Color secondaryColor = Color(0xFF4CAF8C); // Green
  // static const Color secondaryLight = Color(0xFF80E8B2); // Light green
  // static const Color secondaryDark = Color(0xFF357A5E); // Dark green

  // static const Color tertiaryColor = Color(0xFFFF8A80); // Salmon/pink
  // static const Color tertiaryLight = Color(0xFFFFB3A8); // Light salmon/pink
  // static const Color tertiaryDark = Color(0xFFC75B53); // Dark salmon/pink

  // static const Color accentColor = Color(0xFFFFCF40); // Yellow
  // static const Color accentColorLight = Color(0xFFFFE680); // Light yellow
  // static const Color accentColorDark = Color(0xFFC7A200); // Dark yellow
