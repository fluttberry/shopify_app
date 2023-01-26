import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:shopify_app/app/constants/colors/app_colors.dart';

import 'package:shopify_app/app/constants/decoration/app_decoration.dart';
import 'package:shopify_app/app/constants/presentation/widgets/animation_widgets/animated_logo_widget.dart';
import 'package:shopify_app/app/constants/presentation/widgets/buttons/yellow_button_widget.dart';

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

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
              DefaultTextStyle(
                style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: AppColors.lightblueaccent,
                    fontFamily: 'Acme'),
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    RotateAnimatedText('Buy'),
                    RotateAnimatedText('Shop'),
                    RotateAnimatedText('Duck Store'),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        'Supplier only',
                        style: TextStyle(
                          color: AppColors.yellow,
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                    ),
                    // ignore: prefer_const_literals_to_create_immutables
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        SizedBox(
                          height: 70,
                          child: AnimatedLogoWidget(controller: _controller),
                        ),
                        YellowButtonWidget(
                          lable: 'Log In',
                          onTap: () {},
                          width: 0.25,
                        ),
                        YellowButtonWidget(
                          lable: 'Sign Up',
                          onTap: () {},
                          width: 0.25,
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Container(
                decoration: const BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                // ignore: prefer_const_literals_to_create_immutables
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    YellowButtonWidget(
                      lable: 'Log In',
                      onTap: () {},
                      width: 0.25,
                    ),
                    YellowButtonWidget(
                      lable: 'Sign Up',
                      onTap: () {},
                      width: 0.25,
                    ),
                    SizedBox(
                      height: 70,
                      child: AnimatedLogoWidget(controller: _controller),
                    ),
                  ],
                ),
              ),
              Container(
                color: AppColors.grey,
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    GooglefacebookLoginWidget(
                      lable: 'Google',
                      child: const Image(
                        image: AssetImage('images/inapp/google.jpg'),
                      ),
                      onPressed: () {},
                    ),
                    GooglefacebookLoginWidget(
                      lable: 'Facebook',
                      child: const Image(
                        image: AssetImage('images/inapp/facebook.jpg'),
                      ),
                      onPressed: () {},
                    ),
                    GooglefacebookLoginWidget(
                      lable: 'Guest',
                      child: const Icon(
                        Icons.person,
                        size: 55,
                        color: AppColors.lightblueaccent,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GooglefacebookLoginWidget extends StatelessWidget {
  const GooglefacebookLoginWidget({
    Key? key,
    required this.child,
    required this.lable,
    required this.onPressed,
  }) : super(key: key);
  final Widget child;
  final String lable;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          SizedBox(
            height: 50,
            width: 50,
            child: child,
          ),
          Text(
            lable,
            style: const TextStyle(color: AppColors.white),
          ),
        ],
      ),
    );
  }
}
