import 'package:flutter/material.dart';
import 'package:shopify_app/app/utilities/categ_list.dart';

class WomenCategory extends StatelessWidget {
  const WomenCategory({super.key});

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
                  children: List.generate(women.length, (index) {
                    return Column(
                      children: [
                        SizedBox(
                          height: 70,
                          width: 70,
                          child: Image(
                            image: AssetImage('images/women/women$index.jpg'),
                          ),
                        ),
                        Text(women[index]),
                      ],
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
