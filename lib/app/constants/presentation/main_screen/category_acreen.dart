import 'package:flutter/material.dart';
import 'package:shopify_app/app/categories/men_category.dart';
import 'package:shopify_app/app/categories/women_category.dart';
import 'package:shopify_app/app/constants/colors/app_colors.dart';
import 'package:shopify_app/app/constants/presentation/main_screen/fake_search_widget.dart';

List<ItemsData> items = [
  ItemsData(lable: 'men'),
  ItemsData(lable: 'women'),
  ItemsData(lable: 'shoes'),
  ItemsData(lable: 'bads'),
  ItemsData(lable: 'electronicts'),
  ItemsData(lable: 'accessories'),
  ItemsData(lable: 'home & garden'),
  ItemsData(lable: 'kids'),
  ItemsData(lable: 'beauty'),
];

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.white,
        title: const FakeSearchWidget(),
      ),
      body: Stack(children: [
        Positioned(bottom: 0, left: 0, child: sideNavigator(size)),
        Positioned(bottom: 0, right: 0, child: categoryView(size)),
      ]),
    );
  }

  Widget sideNavigator(Size size) {
    return SizedBox(
      height: size.height * 0.8,
      width: size.width * 0.2,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: ((context, index) {
          return GestureDetector(
            onTap: () {
              for (var element in items) {
                element.isSelected = false;
              }
              setState(() {
                items[index].isSelected = true;
              });
              // _pageController.jumpToPage(index);
              _pageController.animateToPage(index,
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn);
            },
            // ignore: avoid_unnecessary_containers
            child: Container(
              height: 100,
              color: items[index].isSelected == true
                  ? AppColors.white
                  : AppColors.yellow,
              child: Center(
                child: Text(items[index].lable),
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget categoryView(Size size) {
    return Container(
      color: AppColors.white,
      height: size.height * 0.8,
      width: size.width * 0.8,
      child: PageView(
          controller: _pageController,
          scrollDirection: Axis.vertical,
          children: const [
            MenCategory(),
            WomenCategory(),
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

class ItemsData {
  String lable;
  bool isSelected;
  ItemsData({
    required this.lable,
    this.isSelected = false,
  });
}

//https://www.youtube.com/watch?v=Z0uSVCOb_JQ 44-00




