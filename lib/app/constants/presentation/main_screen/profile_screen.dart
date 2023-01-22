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
      backgroundColor: AppColors.grey.shade300,
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
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              25,
                            ),
                            bottomLeft: Radius.circular(
                              25,
                            ),
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: const SizedBox(
                            height: 40,
                            width: 80,
                            child: Center(
                              child: Text(
                                'Cart',
                                style: TextStyle(
                                  color: AppColors.yellow,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: AppColors.yellow,
                        child: TextButton(
                          onPressed: () {},
                          child: const SizedBox(
                            height: 40,
                            width: 80,
                            child: Center(
                              child: Text(
                                'Orders',
                                style: TextStyle(
                                  color: AppColors.brown,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: AppColors.red,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(
                              25,
                            ),
                            bottomRight: Radius.circular(
                              25,
                            ),
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: const SizedBox(
                            height: 40,
                            width: 80,
                            child: Center(
                              child: Text(
                                'Wishlist',
                                style: TextStyle(
                                  color: AppColors.yellow,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
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
//https://www.youtube.com/watch?v=e9gkL0Mk9o0 15-35