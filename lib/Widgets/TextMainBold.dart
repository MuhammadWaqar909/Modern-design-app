// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextMainBold extends StatelessWidget {
  double size;
  final String text;
  final Color color;

  TextMainBold(
      {Key? key, this.size = 30, this.color = Colors.white, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontSize: size, color: color, fontWeight: FontWeight.bold));
  }
}
