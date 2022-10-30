import 'package:flutter/material.dart';

import '../../../domain/product/values.dart';
import 'widgets/search_widget.dart';
import 'widgets/tab_page.dart';
import 'widgets/tab_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        backgroundColor: Colors.blueGrey.shade100.withOpacity(0.5),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const SearchWidget(),
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.yellow,
            indicatorWeight: 8,
            tabs: categories
                .map((String item) => TabWidget(label: item))
                .toList(),
          ),
        ),
        body: TabBarView(
          children: categories
              .map((String item) => TabPage(categoryName: item))
              .toList(),
        ),
      ),
    );
  }
}
