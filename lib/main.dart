import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:modern_design_app/Cubit/app_cubit_states.dart';
import 'package:modern_design_app/Cubit/app_cubits.dart';
import 'package:modern_design_app/pages/HomePage.dart';
import 'package:modern_design_app/pages/Test.dart';
import 'Cubit/app_cubits_logics.dart';
import 'package:modern_design_app/pages/Nav%20menu/DetailPage.dart';
import 'package:modern_design_app/pages/Nav%20menu/MainPage.dart';
// ignore: unused_import
import 'package:modern_design_app/pages/Welcome_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepPurple,
        // ignore: prefer_const_constructors
        iconTheme: IconThemeData(color: Colors.black),
      ),
      home: TestPage(),
      // home: BlocProvider<AppCubits>(
      //   create: (context) => AppCubits(InitialState),
      //   child: AppCubitLogics(),
      // ),
    );
  }
}
