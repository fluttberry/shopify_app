import 'package:flutter/material.dart';
import 'package:shopify_app/app/constants/presentation/widgets/category_widgets/category_header_lable.dart';
import 'package:shopify_app/app/constants/presentation/widgets/category_widgets/slider_widget.dart';
import 'package:shopify_app/app/utilities/categ_list.dart';

import '../constants/presentation/widgets/category_widgets/sub_category_model.dart';

class BeautyCategory extends StatelessWidget {
  const BeautyCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Column(
            children: [
              // ignore: prefer_const_constructors
              CategoryHeaderLable(headerLable: 'BEAUTY'),
              Expanded(
                child: GridView.count(
                  mainAxisSpacing: 70,
                  crossAxisSpacing: 15,
                  crossAxisCount: 3,
                  children: List.generate(beauty.length, (index) {
                    return SubCategoryModel(
                        mainCategotyName: 'beauty',
                        subCategotyName: beauty[index],
                        assetName: 'images/beauty/beauty$index.jpg',
                        subCategotyLable: beauty[index]);
                  }),
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          bottom: 0,
          right: 0,
          child: SliderWidget(mainSliderText: 'beauty'),
        ),
      ],
    );
  }
}
