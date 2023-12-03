import 'package:fastfood/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/cart.dart';
import '../widgets/floating_container.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Orders'),
        ),
        body: Stack(
          children: [
            Consumer<Cart>(
              builder: (context, cart, child) {
                if (cart.myOrder.isEmpty) {
                  return Center(
                    child: textTitleStyle('No Orders Yet'),
                  );
                } else {
                  return ListView.builder(
                    itemCount: cart.myOrder.length,
                    itemBuilder: (context, i) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: cart.myOrder[i].contaierColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                    width: 50,
                                    child:
                                        Image.asset(cart.myOrder[i].imageName)),
                                Text(
                                  cart.myOrder[i].recipeName,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                ),
                                IconButton(
                                    onPressed: () {
                                      cart.remove(cart.myOrder[i]);
                                    },
                                    icon: const Icon(Icons.remove)),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }
              },
            ),
            Positioned(
                bottom: 24.0,
                left: 0.0,
                right: 0.0,
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Consumer<Cart>(
                      builder: (context, cart, child) {
                        return floatedContainer(
                            '${cart.count} Items | ${cart.price} LE',
                            '',
                            context,
                            () {});
                      },
                    )))
          ],
        ));
  }
}
