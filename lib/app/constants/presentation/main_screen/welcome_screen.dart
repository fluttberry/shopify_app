import 'package:flutter/material.dart';
import 'package:shopify_app/app/constants/colors/app_colors.dart';
import 'package:shopify_app/app/constants/decoration/app_decoration.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: AppDecartion.welcomeDecoration,
        constraints: const BoxConstraints.expand(),
        // ignore: prefer_const_literals_to_create_immutables
        child: SafeArea(
          child: Column(
            children: const [
              Text(
                'WELCOME',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
