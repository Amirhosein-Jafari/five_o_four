import 'package:flutter/material.dart';

class AppTheme {
  // static const Color scaffoldBackground = Color(0xFFF1F5F5); // BlueWhite
  static const Color scaffoldBackgroundLight = Color(0xFFFFFFFF); // white
  static const Color scaffoldBackgroundDark = Color(0xFF121212); // Black
  static const Color cardBackground = Color(0xFFFFFFFF); // White
  static const Color textPrimary = Color(0xFF000000); // Black
  static const Color textSecondary = Color(0xFF666666); // Grey
  static const Color blueAccent = Color(0xFF4A90E2); // Blue for title, tabs
  static const Color orangeAccent = Color(0xFFF5A623); // Orange for phonetic
  static const Color redAccent = Color(0xFFFF4D4D);
  static const Color greenAccent = Color(0xFF4CAF50);
  static const Color white = Color(0xFFFFFFFF); // White for button text/icons

  static const Color purpleAccent = Color(0xFF7986CB); // Purple
  static const Color lightPurpleAccent = Color(0xFFAEB8E0); // Light purple
  static const Color darkPurpleAccent = Color(0xFF495A8A); // Dark purple

  static const Color pastilGreenAccent = Color(0xFF4CAF8C); // Green
  static const Color lightPastilGreenAccent = Color(0xFF80E8B2); // Light green
  static const Color darkPastilGreenAccent = Color(0xFF357A5E); // Dark green

  static const Color pinkAccent = Color(0xFFFF8A80); // Salmon/pink
  static const Color lightPinkAccent = Color(0xFFFFB3A8); // Light salmon/pink
  static const Color darkPinkAccent = Color(0xFFC75B53); // Dark salmon/pink

  static const Color yellowAccent = Color(0xFFFFCF40); // Yellow
  static const Color lightYellowAccent = Color(0xFFFFE680); // Light yellow
  static const Color darkYellowAccent = Color(0xFFC7A200); // Dark yellow

  static const Color pastilBlueAccent = Color(0xFF81D4FA); // Light blue
  static const Color lightPastilBlueAccent = Color(0xFFB3E5FC); // Lighter blue
  static const Color darkPastilBlueAccent = Color(0xFF4BA3C7); // Darker blue

  static const Color pastilOrangeAccent = Color(0xFFFFAB91); // Light orange
  static const Color lightPastilOrangeAccent =
      Color(0xFFFFCCBC); // Lighter orange
  static const Color darkPastilOrangeAccent =
      Color(0xFFC77C68); // Darker orange

  static const Color pastilPurpleAccent = Color(0xFFCE93D8); // Light purple
  static const Color lightPastilPurpleAccent =
      Color(0xFFE1BEE7); // Lighter purple
  static const Color darkPastilPurpleAccent =
      Color(0xFF9C64A6); // Darker purple

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
    fontFamilyFallback: ['Nunito', 'Vazirmatn'],
    scaffoldBackgroundColor: scaffoldBackgroundLight,
    primaryColor: blueAccent,
    colorScheme: const ColorScheme.light(
      primary: blueAccent,
      secondary: orangeAccent,
      tertiary: redAccent,
      surface: Color(0xFFEDEEF1),
      onPrimary: white,
      onSecondary: white,
      onSurface: textPrimary,
    ),
    textTheme: textTheme,
    appBarTheme: const AppBarTheme(
      backgroundColor: blueAccent,
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
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 0.5,
        ),
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
        backgroundColor: blueAccent,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(0),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
          foregroundColor: blueAccent,
          // padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          overlayColor: blueAccent),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: scaffoldBackgroundLight,
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: blueAccent,
      linearTrackColor: blueAccent.withAlpha(50),
      borderRadius: BorderRadius.circular(2),
      linearMinHeight: 6,
    ),
  );

  final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Nunito',
    fontFamilyFallback: ['Nunito', 'Vazir'],
    scaffoldBackgroundColor: scaffoldBackgroundDark,
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
      backgroundColor: blueAccent,
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
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.grey.shade800,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    iconTheme: const IconThemeData(
      color: Colors.grey,
      size: 24,
    ),
    // shadowColor: Color(0xFF1E1E1E),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: white,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
          foregroundColor: blueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          overlayColor: blueAccent),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: scaffoldBackgroundDark,
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: blueAccent,
      linearTrackColor: blueAccent.withAlpha(50),
      borderRadius: BorderRadius.circular(2),
      linearMinHeight: 6,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(0),
        ),
      ),
    ),
  );
}
