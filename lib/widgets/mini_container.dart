import 'package:flutter/material.dart';

miniCuteContainer(
  String image,
  String name,
  void Function()? onTap,
  Color borderColor,
) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Column(
      children: [
        InkWell(
          splashColor: Colors.transparent,
          onTap: onTap,
          child: Container(
            height: 55,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: borderColor, width: 2)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(image),
            ),
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        Text(name)
      ],
    ),
  );
}
