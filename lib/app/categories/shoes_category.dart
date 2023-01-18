import 'package:flutter/material.dart';
import 'package:shopify_app/app/constants/presentation/widgets/category_widgets/category_header_lable.dart';
import 'package:shopify_app/app/constants/presentation/widgets/category_widgets/slider_widget.dart';
import 'package:shopify_app/app/utilities/categ_list.dart';

import '../constants/presentation/widgets/category_widgets/sub_category_model.dart';

class ShoesCategory extends StatelessWidget {
  const ShoesCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Column(
            children: [
              // ignore: prefer_const_constructors
              CategoryHeaderLable(headerLable: 'SHOES'),
              Expanded(
                child: GridView.count(
                  mainAxisSpacing: 70,
                  crossAxisSpacing: 15,
                  crossAxisCount: 3,
                  children: List.generate(shoes.length, (index) {
                    return SubCategoryModel(
                        mainCategotyName: 'shoes',
                        subCategotyName: shoes[index],
                        assetName: 'images/shoes/shoes$index.jpg',
                        subCategotyLable: shoes[index]);
                  }),
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          bottom: 0,
          right: 0,
          child: SliderWidget(mainSliderText: 'shoes'),
        ),
      ],
    );
  }
}
