import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamepowergw/controllers/apidatacontroller.dart';
import 'package:gamepowergw/ui/moreDetailsPage.dart';
import 'package:gamepowergw/ui/sortmenu.dart';
import 'package:get/get.dart';
import 'package:transparent_image/transparent_image.dart';

Widget gridViewWidget(APIdataController apidatacontroller) {
  return GridView.builder(
    //shrinkWrap: true,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
    ),
    itemCount: apidatacontroller.giveawaysData?.length,
    itemBuilder: (BuildContext context, int index) {
      return GestureDetector(
        onTap: () {
          Get.to(() => MoreDetailsPage(context, index));
        },
        child: Container(
          child: Card(
            elevation: 10,
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: FadeInImage.memoryNetwork(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.fill,
                      placeholder: kTransparentImage,
                      image:
                          "${apidatacontroller.giveawaysData?[index].image}"),
                ),
                Container(
                  //color: Colors.black,
                  foregroundDecoration: BoxDecoration(
                    color: Colors.black26,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 3,
                          ),
                          Expanded(
                            child: Text(
                              "${apidatacontroller.giveawaysData?[index].title}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "${apidatacontroller.giveawaysData?[index].worth}",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
