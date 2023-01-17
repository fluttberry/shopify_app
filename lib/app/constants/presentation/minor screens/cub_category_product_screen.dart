import 'package:flutter/material.dart';
import 'package:shopify_app/app/constants/colors/app_colors.dart';

class SubCategoryProductScreen extends StatelessWidget {
  const SubCategoryProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.black,
          ),
        ),
      ),
    );
  }
}
