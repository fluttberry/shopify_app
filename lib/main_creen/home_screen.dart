import 'package:flutter/material.dart';

class HomeSareen extends StatefulWidget {
  const HomeSareen({super.key});

  @override
  State<HomeSareen> createState() => _HomeSareenState();
}

class _HomeSareenState extends State<HomeSareen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Container(
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: Colors.yellow),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ignore: prefer_const_constructors
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    Text(
                      'What are you looking for?',
                      style: const TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ],
                ),
                // ignore: prefer_const_constructors

                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    border: Border.all(color: Colors.yellow, width: 1.5),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Center(
                    child: Text('Search',
                        style: TextStyle(fontSize: 18, color: Colors.grey)),
                  ),
                ),
              ],
            ),
          ),
          // ignore: prefer_const_constructors
          bottom: TabBar(
              indicatorColor: Colors.yellow,
              indicatorWeight: 8,
              isScrollable: true,
              // ignore: prefer_const_literals_to_create_immutables
              tabs: [
                const RepeatedTabWidget(label: 'Men'),
                const RepeatedTabWidget(label: 'Women'),
                const RepeatedTabWidget(label: 'Shoes'),
                const RepeatedTabWidget(label: 'Bags'),
                const RepeatedTabWidget(label: 'Electroics'),
                const RepeatedTabWidget(label: 'Accessories'),
                const RepeatedTabWidget(label: 'Home & Garden'),
                const RepeatedTabWidget(label: 'Kids'),
                const RepeatedTabWidget(label: 'Beauty'),
              ]),
        ),
        body: const TabBarView(children: [
          Center(child: Text('men screen')),
          Center(child: Text('womenscreen')),
          Center(child: Text('shoes screen')),
          Center(child: Text('bags screen')),
          Center(child: Text('electronics screen')),
          Center(child: Text('accessories screen')),
          Center(child: Text('home&gardenscreen')),
          Center(child: Text('kids screen')),
          Center(child: Text('beauty screen')),
        ]),
      ),
    );
  }
}

class RepeatedTabWidget extends StatelessWidget {
  const RepeatedTabWidget({
    Key? key,
    required this.label,
  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Tab(
        child: Text(
      label,
      style: TextStyle(color: Colors.grey.shade600),
    ));
  }
}
