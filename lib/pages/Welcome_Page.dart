// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:modern_design_app/Widgets/TextMainBold.dart';
import 'package:modern_design_app/Widgets/TextSecondary.dart';
import 'package:modern_design_app/pages/Nav%20menu/MainPage.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "Image1.jpg",
    "Image2.jpg",
    "Image3.jpg",
  ];
  List<String> text = ["TRIPS", "HOLIDAY", "PICNIC"];
  List<String> secondaryText = [
    "Camping Adventure Trip",
    "Mountain Tour",
    "Sea Side Picnic"
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/" + images[index]),
                      opacity: 0.7,
                      fit: BoxFit.cover),
                  color: Color.fromARGB(255, 169, 219, 149).withOpacity(0.5)),
              child: Container(
                margin: const EdgeInsets.only(top: 150, right: 25, left: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 250,
                          child: TextMainBold(
                            text: text[index],
                            size: 40,
                            color: Colors.cyan,
                          ),
                        ),
                        Container(
                          width: 300,
                          child: TextSecondary(
                            text: secondaryText[index],
                            size: 30,
                            color: Colors.indigo,
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Container(
                          width: 250,
                          child: TextSecondary(
                              size: 20,
                              color: Colors.white,
                              text:
                                  "loremLorem sed lorem magna elitr nonumy rebum ut. Erat no consetetur sed dolore et clita, labore dolor eos et est. Et consetetur ipsum duo takimata lorem. Magna ea dolor lorem voluptua et sit."),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ))),
                          onPressed: () {
                            Get.to(() => MainPage());
                          },
                          child: Icon(Icons.arrow_forward),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      child: Column(
                          children: List.generate(images.length, (indexDots) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                              color: index == indexDots
                                  ? Colors.lightBlue[600]
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          width: 8,
                          height: index == indexDots ? 25 : 8,
                        );
                      })),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
