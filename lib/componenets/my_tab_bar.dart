import 'package:aegean_mobile/models/food.dart';
import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;

  const MyTabBar({super.key, required this.tabController});

  List<Tab> _buildCategoryTabs() {
    return FoodCategory.values.map((foodType) {
      return Tab(text: foodType.toString().split('.').last);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero, // ✅ Prevents external padding
      margin: EdgeInsets.zero,
      child: TabBar(
        controller: tabController,
        tabs: _buildCategoryTabs(),
        isScrollable: true,
        padding: const EdgeInsets.only(left: 0),
      ),
    );
  }
}
