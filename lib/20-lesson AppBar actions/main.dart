import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Twentieth extends StatefulWidget {
  const Twentieth({super.key});

  @override
  State<Twentieth> createState() => _TwentiethState();
}

class _TwentiethState extends State<Twentieth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.access_alarm,
                color: Colors.indigo,
              )),
          actionsIconTheme: const IconThemeData(color: Colors.indigo),
          bottom: const PreferredSize(
              preferredSize: Size.fromHeight(30.0),
              // Adjust the height as needed
              child: Text(
                "App Bar widgets",
                style: TextStyle(color: Colors.black),
              )),
          forceMaterialTransparency: true,
          backgroundColor: Colors.white,
          title: const Text("App Bar", style: TextStyle(color: Colors.black)),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                  )),
            ),
          ]),
    );
  }
}
