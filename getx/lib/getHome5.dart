import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/GetxWith/GetxKatagoriler.dart';

class GetHomePage5 extends StatefulWidget {
  const GetHomePage5({super.key});

  @override
  State<GetHomePage5> createState() => _GetHomePage5State();
}

class _GetHomePage5State extends State<GetHomePage5> {
  var getxKategoriler = Get.put(GetXKatagoriler());

  @override
  void initState() {
    super.initState();
    getxKategoriler.kategoriYukle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: const [],
          title: const Text("Page5"),
        ),
        body: GetX<GetXKatagoriler>(builder: (controller) {
          return controller.verilerGeldimi.value == false
              ? const Center(child: CircularProgressIndicator())
              : GridView.builder(
                  itemCount: controller.kartModel.value.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    var model = controller.kartModel.value[index];
                    return Card(
                      child: Column(
                        children: [
                          // Obx(() => IconButton(
                          //     onPressed: () {},
                          //     icon: Icon(Icons.favorite,
                          //         color: model.aktif == true
                          //             ? Colors.red
                          //             : Colors.black))

                          // ),
                          Center(child: Text("${model.ad}+#")),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    model.sayi.value--;
                                  },
                                  child: const Text("-")),
                              Obx(() => Text(model.sayi.value.toString())),
                              ElevatedButton(
                                  onPressed: () {
                                    model.sayi.value++;
                                  },
                                  child: const Text("+")),
                            ],
                          ),
                          ElevatedButton(
                              onPressed: () {
                                print("${json.encode(model)}\n sebete ekle");
                              },
                              child: const Text("Sebete ekle"))
                        ],
                      ),
                    );
                  });
        }));
  }
}
