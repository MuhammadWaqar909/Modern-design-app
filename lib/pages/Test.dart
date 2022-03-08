import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Controller/productController.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Productcontroller productData = Get.put(Productcontroller());

    return Scaffold(
      body: Obx(() {
        return ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: productData.ProductList.length,
            itemBuilder: (context, index) {
              return Container(
                height: 50,
                width: double.maxFinite,
                color: Colors.red,
                child: Text(productData.ProductList[index].nam),
              );
            });
      }),
    );
  }
}
