import 'dart:convert';

import 'package:getx/model/KartModel.dart';
import 'package:http/http.dart ' as http;

class KatagorilerController {
  String apiBaseUrl = "192.168.1.117:45455";

  Future<List<KartModel>> getKategoriler() async {
    var path = "/api/Kategoriler/getKategoriler";
    Uri uri = Uri.http(apiBaseUrl, path);

    var header = {'Content-Type': 'application/json;charset=utf-8 '};

    return http.get(uri, headers: header).then((response) {
      int statuscode = response.statusCode;
      String donendeger = response.body.toString();
      if (statuscode != 200) {
        List<KartModel> model = [];
        return model;
      }

      List<KartModel> modelim = (jsonDecode(donendeger) as List)
          .map((e) => KartModel.fromJson(e))
          .toList();
      return modelim;
    });
  }
}
