import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tests/5-lesson%20splesh%20screen%20va%20listview/listview/fourth_listView.dart';

import '1-lesson flutterga kirish/1-lesson.dart';
import '12-lesson http/main.dart';
import '13-lesson custom widgets/main.dart';
import '14-lesson image pecker/main.dart';
import '15-lesson shered preferens/main.dart';
import '16-lesson login page/screens/home_page.dart';
import '16-lesson login page/screens/login_page.dart';
import '17-lesson Tarixiy joylar and hero widget/screens/main.dart';
import '18-dioga kirish/screens/main.dart';
import '19-lesson dio post/main.dart';
import '2-lesson images va ListView/second_lesson.dart';
import '20-lesson AppBar actions/main.dart';
import '21-lesson instagram home page ui/screens/main.dart';
import '3-lesson next Screen/3-lesson.dart';
import '4-lesson tugma boslish holati/fourth_lesson_second_screen.dart';
import '5-lesson splesh screen va listview/oddiy_usulda_splesh/firts_splesh.dart';
import '6-lesson NamedRoute/main.dart';
import '8-lesson drawer/main.dart';
import '8-lesson drawer/ozim qilganim/firts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      home: TwentyTwoth(),
      debugShowCheckedModeBanner: false,
    );
  }
}
