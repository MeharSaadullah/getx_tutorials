import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorials/Home_Screen.dart';
import 'package:getx_tutorials/Screen_One.dart';
import 'package:getx_tutorials/Screen_Two.dart';
import 'package:getx_tutorials/languages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Languages(), // call language class here
      locale: Locale('en', 'US'), //Localization
      fallbackLocale:
          Locale('en', 'US'), // this is to set by default langauge in your app
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
// here we are uisng GetX Routes
      getPages: [
        GetPage(
          name: '/',
          page: () => HomeScreen(),
        ), // this is to tell the name of initial page which has to load
        GetPage(
          name: '/SCREENTWO',
          page: () => ScreenTwo(),
        ),
      ],
    );
  }
}
