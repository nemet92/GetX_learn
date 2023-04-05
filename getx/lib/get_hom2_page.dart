import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/getx_artan.dart';

import 'get_home3_page.dart';

class GetHomePage2 extends StatefulWidget {
  const GetHomePage2({super.key});

  @override
  State<GetHomePage2> createState() => _GetHomePage2State();
}

class _GetHomePage2State extends State<GetHomePage2> {
  var getxArtan = Get.put(GetxArtan());
  @override
  Widget build(BuildContext context) {
    print("tetiklendi");
    return Scaffold(
        appBar: AppBar(
          title: const Text("Get2"),
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  // getxArtan.sayac.value++;
                },
                child: const Text("Artir ")),
            ElevatedButton(
                onPressed: () {
                  Get.to(const GetHomePage3());
                },
                child: const Text("sonraki sehife ")),
            Obx(() => Text("sayi${getxArtan.sayac}"))
          ],
        ));
  }
}
