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
      backgroundColor: Color(0xFF457B9D),
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.primary,
        backgroundColor: Color.fromARGB(255, 29, 53, 87),
        //backgroundColor: Theme.of(context).primaryColor,

        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Zenith   🚀",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
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
