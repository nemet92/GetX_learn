import 'package:get/get.dart';

class KartModel extends GetxController {
  int? id;
  String? ad;
  var aktif = false.obs;
  // bool? aktif;
  var sayi = 0.obs;

  KartModel({this.id, this.ad, required this.aktif});

  KartModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    ad = json['ad'];
    aktif = json['aktif'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['ad'] = ad;
    // data['aktif'] = aktif.value;
    data['aktif'] = aktif;

    data['sayi'] = sayi.value;

    return data;
  }
}
