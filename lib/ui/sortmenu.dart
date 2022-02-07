import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamepowergw/controllers/uicontroller.dart';
import 'package:get/get.dart';

Widget sortMenu(context, VoidCallback onPressed) {
  //SingingCharacter? _character = SingingCharacter.lafayette;
  final uicontroller = Get.put(UIController());
  return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      title: Text("Sort Menu"),
      content: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Sort Giveaways by",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 200,
            child: ElevatedButton(
                onPressed: () {},
                child: Text("Date"),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  )),
                )),
          ),
          Container(
            width: 200,
            child: ElevatedButton(
                onPressed: () {},
                child: Text("Popularity"),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  )),
                )),
          ),
          Container(
            width: 200,
            child: ElevatedButton(
                onPressed: () {},
                child: Text("Value"),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  )),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "View",
            ),
          ),
          Container(
            width: 200,
            child: ElevatedButton(
                onPressed: () {
                  uicontroller.view =
                      RxBool(false); //set the controller view to false
                  Get.back();
                  print(uicontroller.view);
                  onPressed();
                },
                child: Text("Grid View"),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  )),
                )),
          ),
          Container(
            width: 200,
            child: ElevatedButton(
                onPressed: () {
                  uicontroller.view =
                      RxBool(true); //set the controller view to true
                  Get.back();
                  print(uicontroller.view);
                  onPressed();
                },
                child: Text("List View"),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  )),
                )),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ));
}

// CustomRadioButton(
//         autoWidth: true,
//         buttonLables: ["Date", "Value", "Popularity"],
//         buttonValues: ["DATE", "VALUE", "POPULARITY"],
//         radioButtonValue: (value) {},
//         unSelectedColor: Colors.white,
//         selectedColor: Colors.lightBlue),