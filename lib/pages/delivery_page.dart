import 'package:aegean_mobile/componenets/my_receipt.dart';
import 'package:aegean_mobile/models/restaurant.dart';
import 'package:aegean_mobile/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DeliveryPage extends StatelessWidget {
  const DeliveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final restaurant = Provider.of<Restaurant>(context);

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          MyReceipt(),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
              restaurant.clearCart();
            },
            child: Text("Back to the menu"),
          ),
        ],
      ),
    );
  }
}
