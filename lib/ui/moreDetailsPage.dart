import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamepowergw/controllers/apidatacontroller.dart';
import 'package:get/get.dart';
import 'package:transparent_image/transparent_image.dart';

class MoreDetailsPage extends StatelessWidget {
  var context;
  var index;
  MoreDetailsPage(this.context, this.index);

  @override
  Widget build(BuildContext context) {
    final APIdataController apidatacontroller = Get.find();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 29, 53, 87),
        title: Text("More Details"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: FadeInImage.memoryNetwork(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.fill,
                      placeholder: kTransparentImage,
                      image:
                          "${apidatacontroller.giveawaysData?[index].image}"),
                ),
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  children: [
                    Icon(Icons.calendar_today),
                    Text(
                      "${apidatacontroller.giveawaystimedata?[index].day} ${apidatacontroller.giveawaystimedata?[index].month} ${apidatacontroller.giveawaystimedata?[index].year}",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.location_on),
                    Text(
                      " ${apidatacontroller.giveawaysData?[index]?.status} ",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.monetization_on_outlined),
                    Text(
                      " ${apidatacontroller.giveawaysData?[index]?.worth} ",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.computer),
                    Flexible(
                      child: Text(
                        " ${apidatacontroller.giveawaysData?[index]?.platforms} ",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "${apidatacontroller.giveawaysData?[index]?.title}",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "${apidatacontroller.giveawaysData?[index]?.description}",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Instructions",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "${apidatacontroller.giveawaysData?[index]?.instructions}",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
