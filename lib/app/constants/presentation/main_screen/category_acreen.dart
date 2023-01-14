import 'package:flutter/material.dart';
import 'package:shopify_app/app/constants/colors/app_colors.dart';

List<String> listIndex = ['men', 'women'];

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Positioned(bottom: 0, left: 0, child: sideNavigator(size)),
        Positioned(bottom: 0, left: 0, child: categoryView(size)),
      ]),
    );
  }

  Widget sideNavigator(Size size) {
    return SizedBox(
      height: size.height * 0.8,
      width: size.width * 0.2,
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: ((context, index) {
          return GestureDetector(
            onTap: () {},
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: const Text('men'),
            ),
          );
        }),
      ),
    );
  }

  Widget categoryView(Size size) {
    return Container(
      color: AppColors.grey,
      height: size.height * 0.8,
      width: size.width * 0.2,
      child: PageView(scrollDirection: Axis.vertical, children: const [
        Center(child: Text('men category')),
        Center(child: Text('women category')),
        Center(child: Text('shoes category')),
        Center(child: Text('bags category')),
        Center(child: Text('electronics category')),
        Center(child: Text('accessories category')),
        Center(child: Text('home & garden category')),
        Center(child: Text('men category')),
        Center(child: Text('kids category')),
        Center(child: Text('beauty category')),
      ]),
    );
  }
}
//https://www.youtube.com/watch?v=b1DLFKf7gCo 1.09.00