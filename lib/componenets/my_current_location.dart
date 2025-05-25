import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({Key? key}) : super(key: key);

  void openLocationSearchBox(BuildContext context) {
    // showDialog(
    //   context: context,
    //   builder:
    //       (context) => AlertDialog(
    //         title: const Text("My location"),
    //         content: const TextField(
    //           decoration: InputDecoration(hintText: "Type your address ..."),
    //         ),
    //         actions: [
    //           MaterialButton(
    //             onPressed: () => Navigator.pop(context),
    //             child: const Text("Cancel"),
    //           ),

    //           MaterialButton(
    //             onPressed: () => Navigator.pop(context),
    //             child: const Text("Save"),
    //           ),
    //         ],
    //       ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Location",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                Text(
                  "Ismailia, Ismailia First District",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
