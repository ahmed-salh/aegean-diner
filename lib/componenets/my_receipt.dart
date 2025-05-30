import 'package:aegean_mobile/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    final restaurant = Provider.of<Restaurant>(context);

    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),

            Text("Thank you for ordering!", style: TextStyle(fontSize: 36)),
            const SizedBox(height: 25),

            Image.asset("lib/assets/images/success.png", height: 50),
            const SizedBox(height: 25),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.secondary,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  Text(
                    "Your transaction was successful ${restaurant.getTotalPrice()} EGP",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
