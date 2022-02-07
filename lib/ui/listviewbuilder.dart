import 'package:flutter/material.dart';
import 'package:gamepowergw/controllers/apidatacontroller.dart';
import 'package:transparent_image/transparent_image.dart';

Widget listViewWidget(APIdataController apidatacontroller) {
  return ListView.builder(
    itemCount: apidatacontroller.giveawaysData?.length,
    itemBuilder: (BuildContext context, int index) {
      return Container(
        child: Card(
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width,
                child: FadeInImage.memoryNetwork(
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.fill,
                    placeholder: kTransparentImage,
                    image: "${apidatacontroller.giveawaysData?[index].image}"),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
                  "${apidatacontroller.giveawaysData?[index].title}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
          elevation: 10,
        ),
      );
    },
  );
}
