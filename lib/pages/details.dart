import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/text_styles.dart';
import '../model/cart.dart';
import '../widgets/floating_container.dart';
import '../widgets/item_container.dart';

// ignore: must_be_immutable
class Details extends StatefulWidget {
  String title;
  String image;
  Color containerColor;
  String suger;
  String salt;
  String fat;
  String energy;
  String sugerPercent;
  String saltPercent;
  String fatPercent;
  String energyPercent;
  int price;
  List<Items> items;
  int id;
  Details({
    Key? key,
    required this.title,
    required this.image,
    required this.containerColor,
    required this.suger,
    required this.salt,
    required this.fat,
    required this.energy,
    required this.sugerPercent,
    required this.saltPercent,
    required this.fatPercent,
    required this.energyPercent,
    required this.price,
    required this.items,
    required this.id,
  }) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.containerColor,
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.38,
                  color: widget.containerColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Image.asset(widget.image),
                  )),
              textTitleStyle('Ingredients'),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    containerDetails(
                        'Suger',
                        const Color.fromARGB(255, 150, 185, 247),
                        widget.suger,
                        widget.sugerPercent),
                    containerDetails(
                        'Salt',
                        const Color.fromARGB(255, 247, 161, 150),
                        widget.salt,
                        widget.saltPercent),
                    containerDetails(
                        'Fat',
                        const Color.fromARGB(255, 247, 216, 150),
                        widget.fat,
                        widget.fatPercent),
                    containerDetails(
                        'Energy',
                        const Color.fromARGB(255, 200, 150, 247),
                        widget.energy,
                        widget.energyPercent),
                  ],
                ),
              ),
              textTitleStyle('Details'),
              detailText(),
              const SizedBox(
                height: 180,
              )
            ],
          ),
          Positioned(
              bottom: 24.0,
              left: 0.0,
              right: 0.0,
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Consumer<Cart>(builder: ((context, cart, child) {
                    return floatedContainer(
                      '${widget.price}',
                      'Add to Cart',
                      context,
                      () {
                        cart.add(widget.items[widget.id]);
                      },
                    );
                  })))),
        ],
      ),
    );
  }

  containerDetails(
    String title,
    Color color,
    String ingredentDet,
    String ingredentPercent,
  ) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.19,
      height: MediaQuery.of(context).size.height * 0.15,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.black,
            width: 1,
          )),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(ingredentDet),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  ingredentPercent,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  detailText() {
    return const Padding(
      padding: EdgeInsets.only(left: 9.7),
      child: Text(
        'These incredibly delicious, super easy baked Cheese pizza is packed with good cheese.',
        style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 17,
            color: Color.fromARGB(255, 85, 82, 82)),
      ),
    );
  }
}
