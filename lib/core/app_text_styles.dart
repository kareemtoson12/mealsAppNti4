import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  // عناوين
  static const TextStyle h1 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );
  static const TextStyle h2 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColors.headline,
  );
  static const TextStyle sectionTitle = TextStyle(
    fontSize: 23,
    fontWeight: FontWeight.bold,
    color: AppColors.bodyText,
  );

  // لابلز حقول
  static const TextStyle label = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.headline,
  );

  // أزرار
  static const TextStyle button = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  // نص مساعد/رمادي
  static const TextStyle muted = TextStyle(
    fontSize: 14,
    color: AppColors.grey600,
  );
}
