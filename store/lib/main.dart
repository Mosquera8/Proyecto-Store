

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:store/screens/login_screen.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login UI',
      debugShowCheckedModeBanner: false,
      home: loginScreen(),
    );
  }
}

