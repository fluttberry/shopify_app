import 'package:flutter/material.dart';
import 'package:shopify_app/app/constants/presentation/widgets/category_widgets/category_header_lable.dart';
import 'package:shopify_app/app/utilities/categ_list.dart';

import '../constants/presentation/widgets/category_widgets/sub_category_model.dart';

class HomeAndGarden extends StatelessWidget {
  const HomeAndGarden({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Column(
            children: [
              // ignore: prefer_const_constructors
              CategoryHeaderLable(headerLable: 'HOME&GARDEN'),
              Expanded(
                child: GridView.count(
                  mainAxisSpacing: 70,
                  crossAxisSpacing: 15,
                  crossAxisCount: 3,
                  children: List.generate(homeandgarden.length, (index) {
                    return SubCategoryModel(
                        mainCategotyName: 'homeandgarden',
                        subCategotyName: homeandgarden[index],
                        assetName: 'images/homegarden/home$index.jpg',
                        subCategotyLable: homeandgarden[index]);
                  }),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
