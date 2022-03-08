import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
// import 'package:modern_design_app/Controller/productController.dart';
// import 'package:modern_design_app/model/Photos.dart';

import '../model/Zabee.dart';

class RemoteServices {
  // static var Client = http.Client();

  static Future fetchProduct() async {
    var response = await http
        .get(Uri.parse("https://stage.zab.ee/api/getProduct/featured"));

    if (response.statusCode == 200) {
      var jsonString = response.body;
      return zabeeModelFromJson(jsonString);
    } else {
      return null;
    }
  }
}
