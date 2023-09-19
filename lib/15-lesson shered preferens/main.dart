import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences sharedPreferences;

class Fifteenth extends StatefulWidget {
  const Fifteenth({super.key});

  @override
  State<Fifteenth> createState() => _FifteenthState();
}

class _FifteenthState extends State<Fifteenth> {
  TextEditingController txt = TextEditingController();
  String? text;

  @override
  void initState() {
    oqi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("15-lesson"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: txt,
                decoration: InputDecoration(
                    hintText: "Text kiriting", border: OutlineInputBorder()),
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  saqla();
                  oqi();
                });
              },
              child: Text("Ok", style: TextStyle(color: Colors.white)),
              color: Colors.indigo,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(text == null ? 'pustoy' : text!),
            )
          ],
        ),
      ),
    );
  }

  void saqla() async {
    sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString('text', txt.value.text);
  }

  void oqi() async {
    sharedPreferences = await SharedPreferences.getInstance();
    text = await sharedPreferences.getString('text');
  }
}
