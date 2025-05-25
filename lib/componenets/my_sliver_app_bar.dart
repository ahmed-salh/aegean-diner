import 'package:aegean_mobile/componenets/my_cart_icon.dart';
import 'package:aegean_mobile/models/restaurant.dart';
import 'package:aegean_mobile/pages/cart_page.dart';
import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
  final Restaurant restaurant;

  const MySliverAppBar({
    super.key,
    required this.child,
    required this.title,
    required this.restaurant,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      backgroundColor: Theme.of(context).colorScheme.surface,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      pinned: true,
      floating: false,
      centerTitle: true,
      title: Text("Aegean Diner"),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(bottom: 0, left: 0, right: 0),
        expandedTitleScale: 1,
      ),
      actions: [
        MyCartIcon(
          itemCount: restaurant.getTotalItemCount(),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CartPage()),
            );
          },
        ),
      ],
    );
  }
}
