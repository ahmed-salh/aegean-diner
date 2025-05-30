import 'package:aegean_mobile/componenets/my_button.dart';
import 'package:aegean_mobile/componenets/my_cart_tile.dart';
import 'package:aegean_mobile/models/restaurant.dart';
import 'package:aegean_mobile/pages/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        final userCart = restaurant.cart;
        return Scaffold(
          appBar: AppBar(
            title: Text("Cart"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder:
                        (context) => AlertDialog(
                          title: Text(
                            "Are you sure you want to clear the cart?",
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                restaurant.clearCart();
                              },
                              child: Text("Yes"),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                  color:
                                      Theme.of(
                                        context,
                                      ).colorScheme.inversePrimary,
                                ),
                              ),
                            ),
                          ],
                        ),
                  );
                },
                icon: Icon(Icons.delete),
              ),
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? const Expanded(
                          child: Center(
                            child: Text(
                              "Cart is empty..",
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        )
                        : Expanded(
                          child: ListView.builder(
                            itemCount: userCart.length,
                            itemBuilder: (context, index) {
                              return MyCartTile(cartItem: userCart[index]);
                            },
                          ),
                        ),
                  ],
                ),
              ),

              SizedBox(height: 10),

              userCart.isNotEmpty
                  ? Text(
                    "Total Price = ${restaurant.getTotalPrice()} EGP",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                  : SizedBox(height: 0),

              SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.only(bottom: 25, top: 5),
                child: MyButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PaymentPage()),
                    );
                  },
                  text: "Check out",
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
