import 'package:flutter/material.dart';
import 'package:gamepowergw/controllers/apidatacontroller.dart';
import 'package:gamepowergw/controllers/uicontroller.dart';
import 'package:gamepowergw/ui/gridviewbuilder.dart';
import 'package:gamepowergw/ui/listviewbuilder.dart';
import 'package:gamepowergw/ui/sortmenu.dart';
import 'package:get/get.dart';
import 'package:transparent_image/transparent_image.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  refresh() {
    setState(() {});
  }

  //final String title;
  @override
  Widget build(BuildContext context) {
    final apidatacontroller = Get.put(APIdataController());
    final uicontroller = Get.put(UIController());
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return sortMenu(context, refresh);
                      });
                },
                icon: Icon(Icons.sort))
          ],
        ),
      ),
      body: Obx(() => uicontroller.view.isFalse
          ? gridViewWidget(apidatacontroller)
          : listViewWidget(apidatacontroller)),
    );
  }
}
