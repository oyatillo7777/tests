import 'package:flutter/material.dart';
import 'package:tests/11-lesson%20hive%20contact/main.dart';
import 'package:tests/11-lesson%20hive%20contact/model/contact.dart';

class Eleventh_Secon_Screen extends StatefulWidget {
  const Eleventh_Secon_Screen({Key? key}) : super(key: key);

  @override
  State<Eleventh_Secon_Screen> createState() => _Eleventh_Secon_ScreenState();
}

class _Eleventh_Secon_ScreenState extends State<Eleventh_Secon_Screen> {
  TextEditingController txtism = TextEditingController();
  TextEditingController txtfam = TextEditingController();
  TextEditingController txtnom = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ikkinchi"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: txtism,
              decoration: InputDecoration(
                  hintText: "ism",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: txtfam,
              decoration: InputDecoration(
                  hintText: "fam",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: txtnom,
              decoration: InputDecoration(
                  hintText: "nomer",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          MaterialButton(
            color: Colors.green,
            onPressed: () {
              Contact contact = Contact(
                  txtism.value.text, txtfam.value.text, txtnom.value.text);
              contactBox.add(contact);
              Navigator.pop(context);
            },
            child: Text("Saqlash",
                style: TextStyle(color: Colors.white, fontSize: 20)),
          )
        ],
      ),
    );
  }
}
