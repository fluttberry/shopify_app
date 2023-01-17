import 'package:flutter/material.dart';
import 'package:shopify_app/app/constants/presentation/minor%20screens/cub_category_product_screen.dart';
import 'package:shopify_app/app/utilities/categ_list.dart';

class MenCategory extends StatelessWidget {
  const MenCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Column(
            children: [
              const Text('data'),
              Expanded(
                child: GridView.count(
                  mainAxisSpacing: 70,
                  crossAxisSpacing: 15,
                  crossAxisCount: 3,
                  children: List.generate(men.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const SubCategoryProductScreen(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            height: 70,
                            width: 70,
                            child: Image(
                              image: AssetImage('images/men/men$index.jpg'),
                            ),
                          ),
                          Text(men[index]),
                        ],
                      ),
                    );
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
