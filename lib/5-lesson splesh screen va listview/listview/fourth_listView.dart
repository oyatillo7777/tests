import 'package:flutter/material.dart';
import 'package:tests/5-lesson%20splesh%20screen%20va%20listview/listview/widgets/listTitle.dart';

class Fourth_ListView extends StatefulWidget {
  const Fourth_ListView({Key? key}) : super(key: key);

  @override
  State<Fourth_ListView> createState() => _Fourth_ListViewState();
}

class _Fourth_ListViewState extends State<Fourth_ListView> {
  List ism = [
    ["https://mtdata.ru/u4/photoADA1/20181925927-0/original.jpeg", "Elon musk"],
    ["https://mtdata.ru/u4/photoADA1/20181925927-0/original.jpeg", "Elon musk"],
    ["https://mtdata.ru/u4/photoADA1/20181925927-0/original.jpeg", "Elon musk"],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View")),
      body: ListView.builder(
          itemCount: ism.length,
          itemBuilder: (context, index) {
            return listTitle(ism[index][0], ism[index][1]);
          }),
    );
  }
}
