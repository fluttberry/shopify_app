import 'package:flutter/material.dart';
import 'package:shopify_app/app/constants/colors/app_colors.dart';
import 'package:shopify_app/app/constants/presentation/widgets/app_bar_widgets/appbar_title_widget.dart';
import 'package:shopify_app/app/constants/text_styles/app_text_styles.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        title: const AppbarTitleWidget(title: 'Cart'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.delete_forever,
              color: AppColors.black,
            ),
          ),
        ],
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body: Center(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              'Your Cart Is Empty!',
              style: AppTextStyles.black30Regular,
            )
          ],
        ),
      ),
    );
  }
}

//https://www.youtube.com/watch?v=-OTclrbzQ3Y 51
