import 'package:flutter/material.dart';
import 'package:gamepowergw/controllers/apidatacontroller.dart';
import 'package:gamepowergw/ui/moreDetailsPage.dart';
import 'package:get/get.dart';

Widget listViewWidget(APIdataController apidatacontroller) {
  return ListView.builder(
    itemCount: apidatacontroller.giveawaysData?.length,
    itemBuilder: (BuildContext context, int index) {
      return GestureDetector(
        onTap: () {
          Get.to(() => MoreDetailsPage(context, index));
        },
        child: Card(
          color: Color.fromARGB(226, 230, 57, 71),
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Column(
            children: [
              // Container(
              //   decoration: BoxDecoration(
              //       image: DecorationImage(
              //           image: NetworkImage(
              //               "${apidatacontroller.giveawaysData?[index].image}"),
              //           fit: BoxFit.fill)),
              // ),

              // FadeInImage.memoryNetwork(
              //     placeholder: kTransparentImage,
              //     image: "${apidatacontroller.giveawaysData?[index].image}"),
              Image.network(
                "${apidatacontroller.giveawaysData?[index].image}",
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
                errorBuilder: ((context, error, stackTrace) {
                  return Text("Check your internet connection..😢");
                }),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "${apidatacontroller.giveawaysData?[index].title}",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              // SizedBox(
              //   height: 7,
              // ),
              Divider(
                thickness: 3,
                indent: 30,
                endIndent: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      "Worth : ${apidatacontroller.giveawaysData?[index].worth}",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    child: Text(
                      "Platforms: ${apidatacontroller.giveawaysData?[index].platforms}",
                      maxLines: 2,
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
          // child: Stack(
          //   children: [
          // FadeInImage.memoryNetwork(

          //     //alignment: Alignment.centerLeft,
          //     //fit: BoxFit.contain,
          //     placeholder: kTransparentImage,
          //     image: "${apidatacontroller.giveawaysData?[index].image}"),
          //     Column(
          //       children: <Widget>[
          //         Center(
          //           child: Text(
          //             "${apidatacontroller.giveawaysData?[index].title}",
          //             textAlign: TextAlign.center,
          //             style: TextStyle(
          //               color: Colors.white,
          //               fontSize: 20,
          //               fontWeight: FontWeight.normal,
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          elevation: 5,
          //margin: EdgeInsets.all(15),
          margin: EdgeInsets.fromLTRB(18, 5, 18, 5),
        ),
      );
    },
  );
}
