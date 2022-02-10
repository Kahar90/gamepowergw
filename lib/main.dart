import 'package:flutter/material.dart';
import 'package:gamepowergw/ui/homepage.dart';

import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    defaultTransition: Transition.fade,
    theme: ThemeData(
      primaryColor: Color.fromARGB(255, 29, 53, 87),
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: HomePage(),
  ));
}
