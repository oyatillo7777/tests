import 'package:flutter/material.dart';
import 'package:tests/17-lesson%20Tarixiy%20joylar%20and%20hero%20widget/screens/second.dart';

import '../model/tarixiy.dart';

class Seventeenth extends StatefulWidget {
  const Seventeenth({super.key});

  @override
  State<Seventeenth> createState() => _SeventeenthState();
}

class _SeventeenthState extends State<Seventeenth> {
  List<Tarixiy> tarixiyJoylar = [
    Tarixiy('images/img_1.png', "Buxoro",
        "Buxoro — Oʻzbekiston Respublikasining Xorazm viloyatidagi shahar. Xiva tumani markazi. Oʻzbekistonning shimoliy gʻarbida, Xorazm viloyatning janubida, Amudaryoning chap sohilida, daryodan 40 km janubida, 95 m balandlikda joylashgan. Shahar yonidan Polvonyop (qadimiy Xeykaniq) kanali oʻtgan. Yaqin temir yoʻl stansiyasi — Urganch (30 km). Maydoni 0,08 ming km². 2022-yil 1-yanvar holatiga Xiva tuman doimiy aholisining soni 149 698 kishi, Xiva shahri — 95 246 kishini tashkil qilgan.[1] Shaharning qadimgi qismidagi juda koʻp arxitektura yodgorliklariga boy boʻlgan Ichan-Qal’a Sharqning ekzotik shahar timsolini oʻzida saqlab qolgan afsonaviy shahardir.[2]"),
    Tarixiy('images/img_2.png', "Samarqand",
        "Samarqand — Oʻzbekiston Respublikasining Xorazm viloyatidagi shahar. Xiva tumani markazi. Oʻzbekistonning shimoliy gʻarbida, Xorazm viloyatning janubida, Amudaryoning chap sohilida, daryodan 40 km janubida, 95 m balandlikda joylashgan. Shahar yonidan Polvonyop (qadimiy Xeykaniq) kanali oʻtgan. Yaqin temir yoʻl stansiyasi — Urganch (30 km). Maydoni 0,08 ming km². 2022-yil 1-yanvar holatiga Xiva tuman doimiy aholisining soni 149 698 kishi, Xiva shahri — 95 246 kishini tashkil qilgan.[1] Shaharning qadimgi qismidagi juda koʻp arxitektura yodgorliklariga boy boʻlgan Ichan-Qal’a Sharqning ekzotik shahar timsolini oʻzida saqlab qolgan afsonaviy shahardir.[2]"),
    Tarixiy('images/img_3.png', "Xiva",
        "Xiva — Oʻzbekiston Respublikasining Xorazm viloyatidagi shahar. Xiva tumani markazi. Oʻzbekistonning shimoliy gʻarbida, Xorazm viloyatning janubida, Amudaryoning chap sohilida, daryodan 40 km janubida, 95 m balandlikda joylashgan. Shahar yonidan Polvonyop (qadimiy Xeykaniq) kanali oʻtgan. Yaqin temir yoʻl stansiyasi — Urganch (30 km). Maydoni 0,08 ming km². 2022-yil 1-yanvar holatiga Xiva tuman doimiy aholisining soni 149 698 kishi, Xiva shahri — 95 246 kishini tashkil qilgan.[1] Shaharning qadimgi qismidagi juda koʻp arxitektura yodgorliklariga boy boʻlgan Ichan-Qal’a Sharqning ekzotik shahar timsolini oʻzida saqlab qolgan afsonaviy shahardir.[2]"),
    Tarixiy('images/img_4.png', "Shaxrisabz",
        "Shaxrisabz — Oʻzbekiston Respublikasining Xorazm viloyatidagi shahar. Xiva tumani markazi. Oʻzbekistonning shimoliy gʻarbida, Xorazm viloyatning janubida, Amudaryoning chap sohilida, daryodan 40 km janubida, 95 m balandlikda joylashgan. Shahar yonidan Polvonyop (qadimiy Xeykaniq) kanali oʻtgan. Yaqin temir yoʻl stansiyasi — Urganch (30 km). Maydoni 0,08 ming km². 2022-yil 1-yanvar holatiga Xiva tuman doimiy aholisining soni 149 698 kishi, Xiva shahri — 95 246 kishini tashkil qilgan.[1] Shaharning qadimgi qismidagi juda koʻp arxitektura yodgorliklariga boy boʻlgan Ichan-Qal’a Sharqning ekzotik shahar timsolini oʻzida saqlab qolgan afsonaviy shahardir.[2]"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("tarixiy joylar")),
      body: ListView.builder(
          itemCount: tarixiyJoylar.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => Seventeenth_Screen(
                              rasm: tarixiyJoylar[index].rasm,
                              nomi: tarixiyJoylar[index].nomi,
                              malumot: tarixiyJoylar[index].malumot,
                            )));
              },
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2, color: Colors.black)),
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: Hero(
                        tag: tarixiyJoylar[index].rasm,
                        child: Image(
                            image: AssetImage(tarixiyJoylar[index].rasm),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(tarixiyJoylar[index].nomi),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
