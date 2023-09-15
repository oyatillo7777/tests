import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tests/13-lesson%20custom%20widgets/page/home_page.dart';
import 'package:tests/13-lesson%20custom%20widgets/widgets/custom_button.dart';
import 'package:tests/13-lesson%20custom%20widgets/widgets/custom_textfilde.dart';
import 'package:tests/13-lesson%20custom%20widgets/widgets/header.dart';
import 'package:tests/13-lesson%20custom%20widgets/widgets/textfiledpassword.dart';

class Threetenth extends StatefulWidget {
  const Threetenth({Key? key}) : super(key: key);

  @override
  State<Threetenth> createState() => _ThreetenthState();
}

class _ThreetenthState extends State<Threetenth> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final bool isPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            children: [
              Threetenth_Header(
                title: 'Login',
              ),
              Custom_TextFiled(
                hintText: 'email',
                controller: emailController,
                prefixIcon: Icons.email,
              ),
              PasswordTextFiled(
                hintText: 'password',
                controller: passwordController,
                prefixIcon: Icons.lock,
              ),
              CustomButton(
                title: 'Sing in',
                tap: () {
                  if (emailController.value.text == "Admin" &&
                      passwordController.value.text == "Admin") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => ThreetenthHomePage()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                            "email: ${emailController.value.text} password: ${passwordController.value.text} rostan ham shudaymi")));
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
