import 'package:flutter/material.dart';
import 'package:shopify_app/app/constants/colors/app_colors.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        title: const Text(
          'Store',
          style: TextStyle(
            fontSize: 28,
            color: AppColors.black,
            fontFamily: 'Acme',
            letterSpacing: 1.5,
          ),
        ),
      ),
    );
  }
}
