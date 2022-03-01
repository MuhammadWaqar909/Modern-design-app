// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextSecondary extends StatelessWidget {
  double size;
  final String text;
  final Color color;

  TextSecondary(
      {Key? key, this.size = 16, this.color = Colors.black, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: size, color: color));
  }
}
