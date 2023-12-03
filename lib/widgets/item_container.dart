import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/cart.dart';
import '../pages/details.dart';

class Items {
  int price;
  Color contaierColor;
  Color containerPriceColor;
  Color textColor;
  String imageName;
  String recipeName;
  String mealCateag;
  Icon icon;
  String suger;
  String salt;
  String fat;
  String energy;
  String sugerPercent;
  String saltPercent;
  String fatPercent;
  String energryPercent;
  void Function()? favorite;
  Items(
      {Key? key,
      required this.price,
      required this.contaierColor,
      required this.containerPriceColor,
      required this.textColor,
      required this.imageName,
      required this.recipeName,
      required this.mealCateag,
      required this.icon,
      required this.suger,
      required this.salt,
      required this.fat,
      required this.energy,
      required this.sugerPercent,
      required this.saltPercent,
      required this.fatPercent,
      required this.energryPercent,
      required this.favorite});
}

containerItemsDesign(
  List<Items> items,
  int i,
  BuildContext context,
) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Details(
                    title: items[i].recipeName,
                    image: items[i].imageName,
                    containerColor: items[i].contaierColor,
                    suger: items[i].suger,
                    salt: items[i].salt,
                    fat: items[i].fat,
                    energy: items[i].energy,
                    sugerPercent: items[i].saltPercent,
                    saltPercent: items[i].saltPercent,
                    fatPercent: items[i].fatPercent,
                    energyPercent: items[i].energryPercent,
                    price: items[i].price,
                    items : items, 
                    id: i,
                  )));
    },
    child: Container(
      decoration: BoxDecoration(
          color: items[i].contaierColor,
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: BoxDecoration(
                  color: items[i].containerPriceColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(15))),
              height: 37,
              width: 70,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  '${items[i].price} LE',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: items[i].textColor,
                      fontSize: 20),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              items[i].imageName,
              width: 85,
            ),
          ),
          Text(
            items[i].recipeName,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          Text(items[i].mealCateag),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: items[i].favorite,
                icon: items[i].icon,
              ),
              Consumer<Cart>(
                builder: (context, cart, child) {
                  return IconButton(
                    onPressed: () {
                      cart.add(items[i]);
                    },
                    icon: const Icon(Icons.add),
                  );
                },
              )
            ],
          )
        ],
      ),
    ),
  );
}
