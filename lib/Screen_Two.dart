import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatefulWidget {
  var name;
  ScreenTwo({super.key, this.name});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SCREEN Two'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text(
                  'we are on screen TWo  using Routes in GetX..... Click to go back')),
          Text(Get.arguments[
              0]), // here we get data from the homw screen in the foam of array
        ],
      ),
    );
  }
}
