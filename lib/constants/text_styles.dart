  import 'package:flutter/material.dart';

textTitleStyle(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 23,
            color: Color.fromARGB(255, 85, 82, 82)),
      ),
    );
  }