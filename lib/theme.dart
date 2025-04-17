import 'package:flutter/material.dart';

class AppTheme {
  static const Color scaffoldBackground = Color(0xFFF6F9F9); // BlueWhite
  static const Color cardBackground = Color(0xFFFFFFFF); // White
  static const Color textPrimary = Color(0xFF000000); // Black
  static const Color textSecondary = Color(0xFF666666); // Grey
  static const Color blueAccent = Color(0xFF4A90E2); // Blue for title, tabs
  static const Color orangeAccent = Color(0xFFF5A623); // Orange for phonetic
  static const Color redAccent = Color(0xFFFF4D4D);
  static const Color greenAccent = Color(0xFF4CAF50);
  static const Color white = Color(0xFFFFFFFF); // White for button text/icons

  static const Color purpleAccent = Color(0xFF7986CB); // Purple
  // static const Color lightPurpleAccent = Color(0xFFAEB8E0); // Light purple
  // static const Color darkPurpleAccent = Color(0xFF495A8A); // Dark purple

  static const Color pastilGreenAccent = Color(0xFF4CAF8C); // Green
  // static const Color lightGreenAccent = Color(0xFF80E8B2); // Light green
  // static const Color darkGreenAccent = Color(0xFF357A5E); // Dark green

  static const Color pinkAccent = Color(0xFFFF8A80); // Salmon/pink
  // static const Color lightPinkAccent = Color(0xFFFFB3A8); // Light salmon/pink
  // static const Color darkPinkAccent = Color(0xFFC75B53); // Dark salmon/pink

  static const Color yellowAccent = Color(0xFFFFCF40); // Yellow
  // static const Color lightYellowAccent = Color(0xFFFFE680); // Light yellow
  // static const Color darkYellowAccent = Color(0xFFC7A200); // Dark yellow

  // Text Theme
  static TextTheme textTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: textPrimary,
      // letterSpacing: 1.1,
      height: 1.4,
    ),
    displayMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: textPrimary,
      // letterSpacing: 1.0,
      height: 1.3,
    ),
    headlineMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: textPrimary,
      // letterSpacing: 0.8,
      height: 1.3,
    ),
    titleLarge: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: blueAccent,
      // letterSpacing: 0.7,
      height: 1.2,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: textPrimary,
      // letterSpacing: 0.5,
      height: 1.5,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: textPrimary,
      // letterSpacing: 0.4,
      height: 1.4,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: textSecondary,
      // letterSpacing: 0.3,
      height: 1.3,
    ),
    labelMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: blueAccent,
      // letterSpacing: 0.4,
      height: 1.3,
    ),
  );

  final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    // fontFamily: 'Nunito',
    fontFamilyFallback: ['Nunito', 'Vazir'],
    scaffoldBackgroundColor: scaffoldBackground,
    primaryColor: blueAccent,
    colorScheme: const ColorScheme.light(
      primary: blueAccent,
      secondary: orangeAccent,
      tertiary: redAccent,
      surface: cardBackground,
      onPrimary: white,
      onSecondary: white,
      onSurface: textPrimary,
    ),
    textTheme: textTheme,
    appBarTheme: const AppBarTheme(
      backgroundColor: scaffoldBackground,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: textPrimary),
      titleTextStyle: TextStyle(
        color: blueAccent,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
    cardTheme: CardTheme(
      color: cardBackground,
      elevation: 2,
      shadowColor: Colors.grey.shade100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    iconTheme: const IconThemeData(
      color: textSecondary,
      size: 24,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: white,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
    tabBarTheme: const TabBarTheme(
      overlayColor: WidgetStatePropertyAll(Colors.transparent),
      dividerColor: Colors.transparent,
      labelColor: blueAccent,
      labelStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelColor: textSecondary,
      unselectedLabelStyle: TextStyle(
        fontSize: 16,
        // fontWeight: FontWeight.bold,
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.transparent,
    ),
  );

  final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Nunito',
    fontFamilyFallback: ['Nunito', 'Vazir'],
    scaffoldBackgroundColor: const Color(0xFF121212),
    primaryColor: blueAccent,
    colorScheme: const ColorScheme.dark(
      primary: blueAccent,
      secondary: orangeAccent,
      tertiary: redAccent,
      surface: Color(0xFF1E1E1E),
      onPrimary: white,
      onSecondary: white,
      onSurface: white,
    ),
    textTheme: textTheme.copyWith(
      displayLarge: textTheme.displayLarge?.copyWith(color: white),
      displayMedium: textTheme.displayMedium?.copyWith(color: white),
      headlineMedium: textTheme.headlineMedium?.copyWith(color: white),
      titleLarge: textTheme.titleLarge?.copyWith(color: blueAccent),
      bodyLarge: textTheme.bodyLarge?.copyWith(color: white),
      bodyMedium: textTheme.bodyMedium?.copyWith(color: white),
      bodySmall: textTheme.bodySmall?.copyWith(color: Colors.grey.shade400),
      labelMedium: textTheme.labelMedium?.copyWith(color: blueAccent),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: white),
      titleTextStyle: TextStyle(
        color: blueAccent,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
    cardTheme: CardTheme(
      color: const Color(0xFF1E1E1E),
      elevation: 2,
      shadowColor: Colors.white.withOpacity(0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    iconTheme: const IconThemeData(
      color: Colors.grey,
      size: 24,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: white,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
    tabBarTheme: const TabBarTheme(
      overlayColor: WidgetStatePropertyAll(Colors.transparent),
      dividerColor: Colors.transparent,
      labelColor: blueAccent,
      labelStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.transparent,
    ),
  );
}
