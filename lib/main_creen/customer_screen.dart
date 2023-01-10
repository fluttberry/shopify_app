import 'package:flutter/material.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({super.key});

  @override
  State<CustomerScreen> createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Category'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Stores'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onTap: (index) {
          setState(() {});
          _selectedIndex = index;
        },
      ),
    );
  }
}
