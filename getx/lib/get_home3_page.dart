import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/getx_artan.dart';

class GetHomePage3 extends StatefulWidget {
  const GetHomePage3({super.key});

  @override
  State<GetHomePage3> createState() => _GetHomePage3State();
}

class _GetHomePage3State extends State<GetHomePage3> {
  var getxArtan = Get.put(GetxArtan());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx3 "),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              print(getxArtan.sayac);
              getxArtan.sayac.value++;
            },
            child: const Text("Artir"),
          ),
        ],
      ),
    );
  }
}
