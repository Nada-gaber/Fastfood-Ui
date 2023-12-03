import 'package:fastfood/widgets/item_container.dart';
import 'package:fastfood/widgets/mini_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/cart.dart';
import '../widgets/floating_container.dart';
import 'order.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedGridView = 0;
  bool isTappedPizza = true;
  bool isTappedBurger = false;
  bool favorite1 = false;
  bool favorite2 = false;
  bool favorite3 = false;
  bool favorite4 = false;
  bool favorite5 = false;
  bool favorite6 = false;

  @override
  Widget build(BuildContext context) {
    List<Items> items = [
      Items(
        price: 36,
        contaierColor: Colors.amber.shade100,
        containerPriceColor: Colors.amber.shade200,
        textColor: const Color.fromARGB(255, 255, 191, 0),
        imageName: 'assets/pizza1.png',
        recipeName: 'Cheese',
        mealCateag: 'pizza',
        icon: favorite1
            ? const Icon(
                Icons.favorite_rounded,
                color: Colors.red,
              )
            : const Icon(
                Icons.favorite_border,
              ),
        suger: '9 Gram',
        salt: '5 Gram',
        fat: '12 Gram',
        energy: '167 kcal',
        sugerPercent: '30%',
        saltPercent: '15%',
        fatPercent: '9%',
        energryPercent: '15%',
        favorite: () {
          setState(() {
            favorite1 = !favorite1;
          });
        },
      ),
      Items(
          price: 45,
          contaierColor: const Color.fromARGB(255, 216, 252, 255),
          containerPriceColor: const Color.fromARGB(255, 193, 248, 252),
          textColor: const Color.fromARGB(255, 90, 230, 255),
          imageName: 'assets/pizza2.png',
          recipeName: 'Sausage',
          mealCateag: 'pizza',
          icon: favorite2
              ? const Icon(
                  Icons.favorite_rounded,
                  color: Colors.red,
                )
              : const Icon(Icons.favorite_border),
          suger: '9 Gram',
          salt: '2 Gram',
          fat: '34 Gram',
          energy: '99 kcal',
          sugerPercent: '32%',
          saltPercent: '12%',
          fatPercent: '6%',
          energryPercent: '14%',
          favorite: () {
            setState(() {
              favorite2 = !favorite2;
            });
          }),
      Items(
          price: 85,
          contaierColor: const Color.fromARGB(255, 255, 216, 230),
          containerPriceColor: const Color.fromARGB(255, 252, 193, 213),
          textColor: const Color.fromARGB(255, 255, 90, 145),
          imageName: 'assets/pizza3.png',
          recipeName: 'Pepperoni',
          mealCateag: 'pizza',
          icon: favorite3
              ? const Icon(
                  Icons.favorite_rounded,
                  color: Colors.red,
                )
              : const Icon(Icons.favorite_border),
          suger: '9 Gram',
          salt: '4 Gram',
          fat: '44 Gram',
          energy: '263 kcal',
          sugerPercent: '34%',
          saltPercent: '15%',
          fatPercent: '34%',
          energryPercent: '15%',
          favorite: () {
            setState(() {
              favorite3 = !favorite3;
            });
          }),
      Items(
          price: 64,
          contaierColor: const Color.fromARGB(255, 255, 243, 209),
          containerPriceColor: const Color.fromARGB(255, 253, 233, 173),
          textColor: const Color.fromARGB(240, 241, 181, 0),
          imageName: 'assets/burger1.png',
          recipeName: 'Chesse',
          mealCateag: 'burger',
          icon: favorite4
              ? const Icon(
                  Icons.favorite_rounded,
                  color: Colors.red,
                )
              : const Icon(Icons.favorite_border),
          suger: '3 Gram',
          salt: '5 Gram',
          fat: '22 Gram',
          energy: '127 kcal',
          sugerPercent: '30%',
          saltPercent: '15%',
          fatPercent: '9%',
          energryPercent: '15%',
          favorite: () {
            setState(() {
              favorite4 = !favorite4;
            });
          }),
      Items(
          price: 45,
          contaierColor: const Color.fromARGB(255, 240, 255, 216),
          containerPriceColor: const Color.fromARGB(255, 205, 255, 176),
          textColor: const Color.fromARGB(255, 140, 199, 1),
          imageName: 'assets/burger2.png',
          recipeName: 'Turkey ',
          mealCateag: 'burger',
          icon: favorite5
              ? const Icon(
                  Icons.favorite_rounded,
                  color: Colors.red,
                )
              : const Icon(Icons.favorite_border),
          suger: '3 Gram',
          salt: '34 Gram',
          fat: '17 Gram',
          energy: '137 kcal',
          sugerPercent: '30%',
          saltPercent: '35%',
          fatPercent: '5%',
          energryPercent: '11%',
          favorite: () {
            setState(() {
              favorite5 = !favorite5;
            });
          }),
      Items(
        price: 85,
        contaierColor: const Color.fromARGB(255, 255, 216, 216),
        containerPriceColor: const Color.fromARGB(255, 252, 193, 193),
        textColor: const Color.fromARGB(255, 255, 90, 90),
        imageName: 'assets/burger3.png',
        recipeName: 'Classic',
        mealCateag: 'burger',
        icon: favorite6
            ? const Icon(
                Icons.favorite_rounded,
                color: Colors.red,
              )
            : const Icon(Icons.favorite_border),
        suger: '7 Gram',
        salt: '5 Gram',
        fat: '13 Gram',
        energy: '207 kcal',
        sugerPercent: '10%',
        saltPercent: '19%',
        fatPercent: '6%',
        energryPercent: '14%',
        favorite: () {
          setState(() {
            favorite6 = !favorite6;
          });
        },
      )
    ];

    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.grey.shade50,
        //   title: ListTile(
        //       leading: IconButton(
        //         onPressed: () {},
        //         icon: const Icon(
        //           Icons.menu,
        //           size: 32,
        //         ),
        //       ),
        //       trailing: IconButton(
        //           onPressed: () {},
        //           icon: const Icon(
        //             Icons.person,
        //             size: 32,
        //           ))),
        // ),
        backgroundColor: Colors.grey.shade50,
        body: Stack(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ListView(
              children: [
                SizedBox(height: 15,),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'I want to Eat',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 1,
                      itemBuilder: (context, i) {
                        return Row(
                          children: [
                            miniCuteContainer(
                              'assets/pizza.png',
                              'pizza',
                              () {
                                setState(() {
                                  selectedGridView = 0;
                                  isTappedPizza = !isTappedPizza;
                                  isTappedBurger = false;
                                });
                              },
                              isTappedPizza ? Colors.amber : Colors.black,
                            ),
                            miniCuteContainer(
                              'assets/burger.png',
                              'burger',
                              () {
                                setState(() {
                                  selectedGridView = 1;
                                  isTappedBurger = !isTappedBurger;
                                  isTappedPizza = false;
                                });
                              },
                              isTappedBurger ? Colors.amber : Colors.black,
                            ),
                          ],
                        );
                      }),
                ),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (context, i) {
                      if (selectedGridView == 0) {
                        return SizedBox(
                          height: 700,
                          child: GridView.count(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            crossAxisSpacing: 5,
                            childAspectRatio: 0.66,
                            mainAxisSpacing: 5,
                            crossAxisCount: 2,
                            children: [
                              containerItemsDesign(items, 0, context),
                              containerItemsDesign(items, 1, context),
                              containerItemsDesign(items, 2, context),
                            ],
                          ),
                        );
                      } else {
                        return SizedBox(
                          height: 700,
                          child: GridView.count(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            crossAxisSpacing: 5,
                            childAspectRatio: 0.66,
                            mainAxisSpacing: 5,
                            crossAxisCount: 2,
                            children: [
                              containerItemsDesign(items, 3, context),
                              containerItemsDesign(items, 4, context),
                              containerItemsDesign(items, 5, context),
                            ],
                          ),
                        );
                      }
                    }),
              ],
            ),
          ),
          Positioned(
              bottom: 24.0,
              left: 0.0,
              right: 0.0,
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Consumer<Cart>(
                    builder: (context, cart, child) {
                      return floatedContainer(
                        '${cart.count} Items | ${cart.price} LE',
                        'View Cart',
                        context,
                        () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Order()));
                        },
                      );
                    },
                  )))
        ]));
  }
}
