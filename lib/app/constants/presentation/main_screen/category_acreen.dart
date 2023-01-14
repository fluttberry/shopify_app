import 'package:flutter/material.dart';

List<String> listIndex = ['men', 'women'];

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        ListView.builder(
          itemCount: listIndex.length,
          itemBuilder: ((context, index) {
            return GestureDetector(
              onTap: () {},
              // ignore: avoid_unnecessary_containers
              child: Container(
                child: Text(listIndex[index]),
              ),
            );
          }),
        ),
        // ignore: sized_box_for_whitespace
        Container(
          height: 80,
          width: 80,
          // ignore: prefer_const_literals_to_create_immutables
          child: PageView(
              // ignore: prefer_const_literals_to_create_immutables
              children: const [
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
        ),
      ]),
    );
  }
}
//https://www.youtube.com/watch?v=b1DLFKf7gCo 48-50