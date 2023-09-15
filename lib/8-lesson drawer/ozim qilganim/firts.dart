import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Eighth_Screen extends StatefulWidget {
  const Eighth_Screen({Key? key}) : super(key: key);

  @override
  State<Eighth_Screen> createState() => _Eighth_ScreenState();
}

class _Eighth_ScreenState extends State<Eighth_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("firts")),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              otherAccountsPictures: const [
                InkWell(
                  child: Icon(
                    Icons.dark_mode,
                  ),
                ),
              ],
              accountName: const Text(
                "Oyatillo Mirzolimov",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              accountEmail: null,
              // You can set the user's email here if needed
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/img.png'),
              ),
              decoration: BoxDecoration(color: Colors.green[300]),
            ),
            ListTile(
              title: const Text("Jurnal", style: TextStyle(fontSize: 20)),
              leading:
                  InkWell(onTap: () {}, child: const Icon(Icons.book_outlined)),
            ),
            const ListTile(
              title: Text("Jurnal", style: TextStyle(fontSize: 20)),
              leading: Icon(Icons.image_aspect_ratio),
            ),
            const ListTile(
              title: Text("Sozlamalar", style: TextStyle(fontSize: 20)),
              leading: Icon(Icons.settings),
            ),
            const ListTile(
              title: Text("Profil", style: TextStyle(fontSize: 20)),
              leading: Icon(Icons.people_rounded),
            ),
            const ListTile(
              title: Text("Dastur haqida", style: TextStyle(fontSize: 20)),
              leading: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
