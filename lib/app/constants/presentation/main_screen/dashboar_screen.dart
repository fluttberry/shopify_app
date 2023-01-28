import 'package:flutter/material.dart';
import 'package:shopify_app/app/constants/colors/app_colors.dart';
import 'package:shopify_app/app/constants/presentation/widgets/app_bar_widgets/appbar_title_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        title: const AppbarTitleWidget(
          title: 'dashborad',
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/welcome_screen');
            },
            icon: const Icon(
              Icons.logout,
              color: AppColors.black,
            ),
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          6,
          (index) {
            return Card(
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Icon(
                    Icons.store,
                    size: 50,
                    color: AppColors.yellowAccent,
                  ),
                  const Text(
                    'MyStore',
                    style: TextStyle(
                      fontSize: 24,
                      color: AppColors.yellowAccent,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2,
                      fontFamily: 'Acme',
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
//https://www.youtube.com/watch?v=ndaz3oLJN6U 47-40