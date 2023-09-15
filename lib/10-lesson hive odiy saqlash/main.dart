import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:tests/9-lesson%20hive%20and%20snackbar/main.dart';

import 'model/inson.dart';

late Box insonBox;

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter<Inson>(InsonAdapter());
  insonBox = await Hive.openBox<Inson>("Inson Box");
  runApp(MaterialApp(
    home: Tenth(),
  ));
}

class Tenth extends StatefulWidget {
  const Tenth({Key? key}) : super(key: key);

  @override
  State<Tenth> createState() => _TenthState();
}

class _TenthState extends State<Tenth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hive final")),
      body: Container(
        child: Column(
          children: [
            MaterialButton(
              onPressed: () {
                setState(() {
                  Inson inson = Inson("Oyatillo", "Mirzolimov", 25);
                  insonBox.add(inson);
                });
              },
              child: Text(
                "Save",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.green,
            ),
            ValueListenableBuilder(
                valueListenable: insonBox.listenable(),
                builder: (context, box, child) {
                  return Expanded(
                    child: ListView.builder(
                        itemCount: insonBox.length,
                        itemBuilder: (context, index) {
                          return Card(
                              child: Column(
                            children: [
                              Text(insonBox.getAt(index).ism),
                              Text(insonBox.getAt(index).fam),
                              Text(insonBox.getAt(index).yoshi.toString()),
                            ],
                          ));
                        }),
                  );
                })
          ],
        ),
      ),
    );
  }
}
