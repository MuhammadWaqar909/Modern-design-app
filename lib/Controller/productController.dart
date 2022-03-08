import 'package:get/get.dart';
import 'package:modern_design_app/Controller/RemoteServices.dart';
import 'package:modern_design_app/model/Zabee.dart';

class Productcontroller extends GetxController {
  var ProductList = <ZabeeModel>[];

  void fetchProducts() async {
    var products = await RemoteServices.fetchProduct();
    print(products);
    if (products != null) {
      ProductList = products;
    }
  }
}
