import 'package:aegean_mobile/componenets/my_current_location.dart';
import 'package:aegean_mobile/componenets/my_description_box.dart';
import 'package:aegean_mobile/componenets/my_drawer.dart';
import 'package:aegean_mobile/componenets/my_food_tile.dart';
import 'package:aegean_mobile/componenets/my_sliver_app_bar.dart';
import 'package:aegean_mobile/componenets/my_tab_bar.dart';
import 'package:aegean_mobile/models/food.dart';
import 'package:aegean_mobile/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: FoodCategory.values.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  List<Food> _filterFoodsByCategory(
    FoodCategory category,
    List<Food> fullMenu,
  ) {
    return fullMenu.where((food) => food.type == category).toList();
  }

  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _filterFoodsByCategory(category, fullMenu);
      return ListView.builder(
        padding: EdgeInsets.only(top: 0),
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          Food food = categoryMenu[index];
          return FoodTile(food: food);
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final restaurant = Provider.of<Restaurant>(context);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder:
            (context, innerBoxIsScrolled) => [
              MySliverAppBar(
                restaurant: restaurant,
                title: MyTabBar(tabController: tabController),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Divider(
                      indent: 25,
                      endIndent: 25,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    MyCurrentLocation(),

                    MyDescriptionBox(),
                  ],
                ),
              ),
            ],
        body: Consumer<Restaurant>(
          builder:
              (context, restuarant, child) => TabBarView(
                controller: tabController,
                children: getFoodInThisCategory(restuarant.menu),
              ),
        ),
      ),
    );
  }
}
