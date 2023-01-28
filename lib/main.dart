import 'package:flutter/material.dart';
import 'package:shopify_app/app/constants/presentation/main_screen/customer_screen.dart';
import 'package:shopify_app/app/constants/presentation/main_screen/supplier_home_screen.dart';
import 'package:shopify_app/app/constants/presentation/main_screen/welcome_screen.dart';

void main() {
  runApp(const ShopifyApp());
}

class ShopifyApp extends StatelessWidget {
  const ShopifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: WelcomeScreen(),
      // home: const CustomerScreen(),
      // initialRoute: '/customer_screen',
      initialRoute: '/supplier_home_screen',
      routes: {
        '/welcome_screen': (context) => const WelcomeScreen(),
        '/customer_screen': (context) => const CustomerScreen(),
        '/supplier_home_screen': (context) => const SupplierHomeScreen(),
      },
    );
  }
}
