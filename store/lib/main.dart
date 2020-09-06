

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  final double iconSize = 40.0; // constante para poner tamaño a los iconos
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("HOLA"),
      ),
      body: new Container(
          child: Center(
              child: new Card(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //targetas con nombre e icono
            new MyCard(
                title: new Text(
                  "hola",
                  style: new TextStyle(color: Colors.grey, fontSize: 30.0),
                ),
                icon: new Icon(
                  Icons.favorite,
                  size: iconSize,
                  color: Colors.redAccent,
                )),
          ],
        ),
      ))),
    );
  }
}

class MyCard extends StatelessWidget {
  final Widget title;
  final Widget icon;

  MyCard({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.only(bottom: 3.0),
      child: new Card(
          child: new Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[this.title, this.icon],
        ),
      )),
    );
  }
}
