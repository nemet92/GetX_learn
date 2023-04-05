import 'package:flutter/material.dart';
import 'package:getx/model/KartModel.dart';
import 'package:getx/network/KatagorilerController.dart';

class GetHomePage4 extends StatefulWidget {
  const GetHomePage4({super.key});

  @override
  State<GetHomePage4> createState() => _GetHomePage4State();
}

class _GetHomePage4State extends State<GetHomePage4> {
  List<Widget> listem = [];
  List<KartModel> model33 = [];
  @override
  void initState() {
    super.initState();

    KatagorilerController api = KatagorilerController();
    api.getKategoriler().then((value) {
      model33 = value;
      // ignore: avoid_function_literals_in_foreach_calls
      value.forEach((element) {
        // print("${element.ad!}#");

        // var con = Card(
        //   child: Text(element.ad!),
        // );
        // listem.add(con);
      });

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Page4"),
        ),
        body: Container(
          child: listem.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : GridView.builder(
                  itemCount: model33.length,
                  itemBuilder: (BuildContext context, index) {
                    // var model = model33[index];
                    return Card(
                      child: Center(child: Text("${model33[index].ad}")),
                    );
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisExtent: 100),
                ),
        ));
  }
}
