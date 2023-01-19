import 'package:flutter/material.dart';

import 'package:shopify_app/app/constants/colors/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: AppColors.white,
            expandedHeight: 120,
            flexibleSpace: LayoutBuilder(builder: (context, constraint) {
              return FlexibleSpaceBar(
                title: AnimatedOpacity(
                  opacity: constraint.biggest.height <= 120 ? 1 : 0,
                  duration: const Duration(
                    milliseconds: 500,
                  ),
                  child: const Text(
                    'Account',
                    style: TextStyle(
                      color: AppColors.black,
                    ),
                  ),
                ),
                background: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    AppColors.yellow,
                    AppColors.orange,
                    AppColors.red,
                  ])),
                ),
              );
            }),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: 75,
                  width: 350,
                  decoration: BoxDecoration(
                    color: AppColors.teal,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    children: const [
                      Text(
                        'Cart',
                        style: TextStyle(
                          color: AppColors.yellow,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
