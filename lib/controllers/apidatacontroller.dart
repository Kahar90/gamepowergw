import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:gamepowergw/models/giveawaysmodel.dart';
import 'package:get/get.dart';

class APIdataController extends GetxController {
  final APILink = 'https://www.gamerpower.com/api';
  List<dynamic>? giveawaysData = [];
  List<dynamic>? giveawaystimedata = [];
  bool sortToggle = false;
  var temp;
  var response;

  @override
  void onInit() async {
    giveawaysData = [].obs;
    await getalllivegiveaways();
    super.onInit();
  }

  printdata() {
    // print(response);
    //var jsonResponse = jsonDecode(response.data.toString());

    //print("\n\n\n\n");
    //log(hasildecode.toString());
    //log(response.toString());
    //var testtest = LiveGiveaways.fromJson(jsonDecode(response.toString()));
    //print(jsonDecode("${hasil}"));
    //print(temp);
    //print(GiveawaysData.description);
    // print("Giveawaysdata id   ${response.data[0].runtimeType}");
    // print(response.data.length);
    //GiveawaysData?.clear();

    //print(giveawaysData?.length);
  }

  test() {
    for (var i = 0; i < response.data.length; i++) {
      print(giveawaysData.runtimeType);
      print(giveawaysData?[i].id);
    }
  }

  getalllivegiveaways() async {
    print(APILink + "/giveaways");
    response = await Dio().get(APILink + "/giveaways");
    for (var i = 0; i < response.data.length; i++) {
      var temp = LiveGiveaways.fromJson(response.data[i]);

      // print(temp);
      //print(giveawaysData.runtimeType);
      this.giveawaysData?.add(temp);
      var datetimetemp = DateTime.parse(giveawaysData?[i].publishedDate);
      print(datetimetemp.day);
      giveawaystimedata?.add(datetimetemp);
      //print(giveawaysData?[0].id);
    }
  }
}
