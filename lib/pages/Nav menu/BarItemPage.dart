// ignore_for_file: file_names, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';

class BarPage extends StatefulWidget {
  const BarPage({Key? key}) : super(key: key);

  @override
  _BarPageState createState() => _BarPageState();
}

class _BarPageState extends State<BarPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Bar Page")),
    );
  }
}
