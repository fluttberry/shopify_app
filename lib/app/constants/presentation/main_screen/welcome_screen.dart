import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:shopify_app/app/constants/decoration/app_decoration.dart';

const textColors = [
  Colors.yellowAccent,
  Colors.red,
  Colors.blueAccent,
  Colors.yellowAccent,
  Colors.green,
  Colors.green,
  Colors.teal,
];

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
            children: [
              // ignore: prefer_const_constructors
              // Text(
              //   'WELCOME',
              //   style: const TextStyle(
              //     color: AppColors.white,
              //     fontSize: 30,
              //   ),
              // ),
              AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  ColorizeAnimatedText(
                    'Welcome',
                    textStyle: const TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Acme'),
                    colors: textColors,
                  ),
                  ColorizeAnimatedText(
                    'Duck Store',
                    textStyle: const TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Acme'),
                    colors: textColors,
                  ),
                ],
              ),
              const SizedBox(
                height: 120,
                width: 200,
                child: Image(
                  image: AssetImage('images/inapp/logo.jpg'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//https://www.youtube.com/watch?v=sAX1b-b3dLE 38