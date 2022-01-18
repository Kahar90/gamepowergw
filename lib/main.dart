import 'package:flutter/material.dart';
import 'package:gamepowergw/ui/homepage.dart';

import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    defaultTransition: Transition.fade,
    home: HomePage(),
  ));
}
