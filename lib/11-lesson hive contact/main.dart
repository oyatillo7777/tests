import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:tests/11-lesson%20hive%20contact/model/contact.dart';
import 'package:tests/11-lesson%20hive%20contact/second.dart';

late Box contactBox;

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter<Contact>(ContactAdapter());
  contactBox = await Hive.openBox<Contact>('contact');
  runApp(MaterialApp(
    home: Eleventh(),
  ));
}

class Eleventh extends StatefulWidget {
  const Eleventh({Key? key}) : super(key: key);

  @override
  State<Eleventh> createState() => _EleventhState();
}

class _EleventhState extends State<Eleventh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: ValueListenableBuilder(
          valueListenable: contactBox.listenable(),
          builder: (context, box, _) {
            return ListView.builder(
                itemCount: contactBox.values.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(contactBox.getAt(index).ism),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(contactBox.getAt(index).fam),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(contactBox.getAt(index).nom),
                          ),
                        ],
                      ),
                    ),
                  );
                });
          }),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => Eleventh_Secon_Screen()));
          },
          child: Icon(Icons.add)),
    );
  }
}
