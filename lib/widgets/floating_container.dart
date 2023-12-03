import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/cart.dart';

floatedContainer(
  String details,
  String name,
  BuildContext context,
  void Function()? onTap,
) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Consumer<Cart>(
                builder: (context, cart, child) {
                  return Text(
                  details,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 20),
                  );
                },
              ),
              const Text('Delivery charges included'),
            ],
          ),
        ),
        InkWell(
          onTap: onTap,
          child:  Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
        )
      ],
    ),
  );
}
