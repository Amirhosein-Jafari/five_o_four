import 'package:flutter/material.dart';

EdgeInsets pagePadding(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;
  final paddingValue = screenWidth * 0.04; // 4% of screen width
  return EdgeInsets.all(paddingValue.clamp(16, 32)); // Min 16, max 32
}
