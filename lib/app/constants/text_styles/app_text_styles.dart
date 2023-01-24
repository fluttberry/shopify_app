import 'package:flutter/material.dart';

import '../colors/app_colors.dart';

class AppTextStyles {
  // ignore: prefer_const_constructors
  static const TextStyle brown16Bold = TextStyle(
    color: AppColors.brown,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.5,
  );

  static const TextStyle black28Acme = TextStyle(
    fontSize: 28,
    color: AppColors.black,
    fontFamily: 'Acme',
    letterSpacing: 1.5,
  );

  static const TextStyle black30Regular = TextStyle(
    fontSize: 30,
  );

  static const TextStyle white18Regular = TextStyle(
    fontSize: 18,
  );

  static const TextStyle red20Bold = TextStyle(
    fontSize: 20,
    color: AppColors.red,
    fontWeight: FontWeight.bold,
  );
}
