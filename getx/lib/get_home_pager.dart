import 'package:flutter/material.dart';

class GetHomePage extends StatefulWidget {
  const GetHomePage({super.key});

  @override
  State<GetHomePage> createState() => _GetHomePageState();
}

class _GetHomePageState extends State<GetHomePage> {
  int sayac = 0;
  void arttir() {
    sayac++;
    toplam = toplam + sayac;
    setState(() {});
  }

  int toplam = 0;

  @override
  Widget build(BuildContext context) {
    print("tetiklendi");
    return Scaffold(
        appBar: AppBar(
          title: const Text("Get1"),
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  arttir();
                },
                child: Text("Artir $toplam")),
            Text("sayi$sayac")
          ],
        ));
  }
}
