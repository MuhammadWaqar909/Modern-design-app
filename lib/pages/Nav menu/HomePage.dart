// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modern_design_app/Widgets/TextMainBold.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
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
            children: const [
              Icon(
                Icons.celebration,
              )
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
            margin: EdgeInsets.all(22),
            // ignore: prefer_const_literals_to_create_immutables
            child: TabBar(
                labelColor: Colors.black,
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(text: "Places"),
                  Tab(text: "Inspiration"),
                  Tab(text: "Emotions"),
                ]),
          ),
          Container(
            margin: EdgeInsets.all(22),
            height: 300,
            width: double.maxFinite,
            // ignore: prefer_const_literals_to_create_immutables
            child: TabBarView(controller: _tabController, children: [
              Container(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container();
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Center(child: Text("There is")),
              Center(child: Text("Something Special")),
            ]),
          ),
        ],
      ),
    );
  }
}
