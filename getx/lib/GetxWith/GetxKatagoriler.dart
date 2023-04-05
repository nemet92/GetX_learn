import 'package:get/get.dart';
import 'package:getx/model/KartModel.dart';
import 'package:getx/network/KatagorilerController.dart';

class GetXKatagoriler extends GetxController {
  var kartModel = <KartModel>[].obs;
  var verilerGeldimi = false.obs;

  void kategoriYukle() {
    KatagorilerController api = KatagorilerController();
    api.getKategoriler().then((value) {
      kartModel.value = value;
      verilerGeldimi.value = true;
    });
  }
}
