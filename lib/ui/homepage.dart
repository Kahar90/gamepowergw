import 'package:flutter/material.dart';
import 'package:gamepowergw/controllers/apidatacontroller.dart';
import 'package:get/get.dart';
import 'package:transparent_image/transparent_image.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  //final String title;
  @override
  Widget build(BuildContext context) {
    final apidatacontroller = Get.put(APIdataController());
    return Scaffold(
        appBar: AppBar(
          title: Text("title"),
        ),
        body: Obx(() => GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: apidatacontroller.giveawaysData?.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 100,
                  child: Card(
                    elevation: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FittedBox(
                          fit: BoxFit.fill,
                          child: FadeInImage.memoryNetwork(
                              placeholder: kTransparentImage,
                              image:
                                  "${apidatacontroller.giveawaysData?[index].image}"),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "${apidatacontroller.giveawaysData?[index].title}",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            )));
  }
}
