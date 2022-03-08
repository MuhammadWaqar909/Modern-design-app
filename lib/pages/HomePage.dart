// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:modern_design_app/Controller/productController.dart';
import 'package:modern_design_app/Widgets/TextMainBold.dart';
import 'package:modern_design_app/Widgets/TextSecondary.dart';
import 'package:modern_design_app/pages/Nav%20menu/DetailPage.dart';

import '../model/Photos.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  Productcontroller productData = Get.put(Productcontroller());
  List images = [
    "Image1.jpg",
    "Image2.jpg",
    "Image3.jpg",
    "undraw1.png",
    "undraw2.png",
  ];
  List textlabel = [
    "Label 1",
    "Label 2",
    "Label 3",
    "Label 4",
    "Label 5",
  ];

  // var dataList;

  // @override
  // void initState() async {
  //   super.initState();
  //   LoadData();
  // }

  // Future LoadData() async {
  //   final responce = await http
  //       .get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));

  //   final decodedData = await jsonDecode(responce.body);

  //   final List<CatalogeModel> card = catalogeModelFromJson(decodedData);
  //   dataList = card;
  // }

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (context, a, b) => DetailPage()),
                        (route) => false);
                  },
                  icon: Icon(Icons.celebration))
            ],
          )),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10, right: 20, left: 20),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextMainBold(
                    text: "Discover",
                    size: 33,
                    color: Colors.black,
                  )
                ]),
          ),
          Container(
            margin: EdgeInsets.only(top: 22, right: 22),
            // ignore: prefer_const_literals_to_create_immutables
            child: TabBar(
                labelColor: Colors.black,
                controller: _tabController,
                unselectedLabelColor: Colors.grey,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(text: "Places"),
                  Tab(text: "Inspiration"),
                  Tab(text: "Emotions"),
                ]),
          ),
          Container(
            margin: EdgeInsets.only(top: 22),
            height: 300,
            width: double.maxFinite,
            // ignore: prefer_const_literals_to_create_immutables
            child: TabBarView(controller: _tabController, children: [
              ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(top: 20, left: 20, bottom: 10),
                    width: 200,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("assets/images/" + images[index]),
                          // image: NetworkImage(
                          //     productData.ProductList[index].productImage),
                          fit: BoxFit.cover),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(3, 3), // changes position of shadow
                        )
                      ],
                    ),
                  );
                },
              ),
              Center(child: Text("There is")),
              Center(child: Text("Something Special")),
            ]),
          ),
          // SizedBox(
          //   height: 25,
          // ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextMainBold(
                  text: "Explore More",
                  size: 25,
                  color: Colors.black,
                ),
                TextSecondary(
                  text: "See all",
                  color: Color.fromARGB(255, 91, 148, 194),
                ),
              ],
            ),
          ),
          Container(
              width: double.maxFinite,
              // color: Colors.grey,
              height: 150,
              // margin: EdgeInsets.symmetric(horizontal: 25),
              child: ListView.builder(
                  itemCount: images.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          // margin: EdgeInsets.only(top: 10, left: 10, bottom: 10),
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/" + images[index]),
                                fit: BoxFit.cover),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 4,
                                blurRadius: 3,
                                offset:
                                    Offset(3, 3), // changes position of shadow
                              )
                            ],
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            child: TextSecondary(text: textlabel[index]))
                      ],
                    );
                  })),
        ],
      ),
    );
  }
}
