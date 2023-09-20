import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sixteenth_Login extends StatefulWidget {
  const Sixteenth_Login({super.key});

  @override
  State<Sixteenth_Login> createState() => _Sixteenth_LoginState();
}

class _Sixteenth_LoginState extends State<Sixteenth_Login> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login page")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: txtEmail,
              decoration: InputDecoration(
                  hintText: 'email',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: txtPassword,
              decoration: InputDecoration(
                  hintText: 'email',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder()),
            ),
          ),
          MaterialButton(
            onPressed: () {
              saqla();
              Navigator.pushNamedAndRemoveUntil(
                  context, "/home", (route) => false);
            },
            color: Colors.indigo,
            child: Text("Sing in", style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }

  Future<void> saqla() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool('isLogged', true);
  }
}
