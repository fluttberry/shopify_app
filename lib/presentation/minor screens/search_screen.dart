

import 'package:flutter/material.dart';
import 'package:shopify_app/presentation/widgets/main_creen/fake_search_widget.dart';

class SearchSCreen extends StatelessWidget {
  const SearchSCreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const FakeSearchWidget(),
    ),);
  }
}