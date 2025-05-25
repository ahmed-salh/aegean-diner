import 'package:aegean_mobile/models/food.dart';
import 'package:aegean_mobile/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FoodTile extends StatefulWidget {
  final Food food;

  const FoodTile({super.key, required this.food});

  @override
  State<FoodTile> createState() => _FoodTileState();
}

class _FoodTileState extends State<FoodTile> {
  void addToCart(Food food) {
    context.read<Restaurant>().addToCard(food);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.food.name),
                    Text(
                      "${widget.food.price.toString()} EGP",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      widget.food.description,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                    const SizedBox(height: 20),

                    MaterialButton(
                      child: Text("Add to cart"),
                      onPressed: () => {addToCart(widget.food)},
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 15),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(widget.food.imagePath, height: 160),
              ),
            ],
          ),
        ),

        Divider(
          color: Theme.of(context).colorScheme.tertiary,
          endIndent: 25,
          indent: 25,
        ),
      ],
    );
  }
}
