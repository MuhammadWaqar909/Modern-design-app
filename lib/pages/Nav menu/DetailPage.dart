// ignore_for_file: prefer_const_constructors

import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modern_design_app/Widgets/TextMainBold.dart';
import 'package:modern_design_app/Widgets/TextSecondary.dart';
import 'package:modern_design_app/pages/HomePage.dart';

import 'MainPage.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int starColor = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(children: [
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: 450,
                height: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/Image3.jpg"),
                        fit: BoxFit.cover)),
              )),
          Positioned(
              top: 50,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(right: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      padding: EdgeInsets.only(left: 32),
                      onPressed: () {},
                      icon: const Icon(Icons.menu),
                      iconSize: 33,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.celebration_outlined,
                      size: 33,
                      color: Colors.white,
                    )
                  ],
                ),
              )),
          Positioned(
            top: 260,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                padding: EdgeInsets.all(33),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextMainBold(
                            text: "Sea Side View",
                            color: Color.fromARGB(197, 0, 0, 0),
                          ),
                          TextMainBold(
                            text: "\$ 254",
                            color: Color.fromARGB(195, 104, 58, 183),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_pin),
                          SizedBox(
                            width: 10,
                          ),
                          TextSecondary(text: "USA, California")
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index) {
                              return Icon(
                                Icons.star,
                                color: index < starColor
                                    ? Colors.amber.shade700
                                    : Colors.grey,
                              );
                            }),
                          ),
                          TextSecondary(
                            text: "($starColor.0)",
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      TextSecondary(
                        text: "People",
                        size: 27,
                      ),
                      TextSecondary(
                        text: "Lorem diam consetetur sanctus sadipscing justo.",
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Wrap(
                            children: List.generate(5, (index) {
                          return Container(
                            child: Center(
                              child: Text(
                                "$index",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                color: index < starColor
                                    ? Color.fromARGB(255, 33, 33, 33)
                                    : Color.fromARGB(71, 0, 0, 0)),
                          );
                        })),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      TextSecondary(
                        text: "Description",
                        size: 27,
                      ),
                      TextSecondary(
                        text:
                            "Eos invidunt rebum sanctus invidunt takimata sed sadipscing amet. Invidunt et et aliquyam stet gubergren amet. Labore dolore takimata tempor ea nonumy sed. Consetetur lorem takimata eos stet. Eirmod sed.",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))
                                  // borderRadius:BorderRadius(Radius.circular(10))
                                  ),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.favorite_border)),
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  minimumSize: Size(150, 45), //////// HERE
                                ),
                                onPressed: () {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      PageRouteBuilder(
                                          pageBuilder: (context, a, b) =>
                                              MainPage()),
                                      (route) => false);
                                },
                                child: Icon(Icons.arrow_forward_rounded))
                          ],
                        ),
                      )
                    ]),
                width: MediaQuery.of(context).size.width,
                height: 1000,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
