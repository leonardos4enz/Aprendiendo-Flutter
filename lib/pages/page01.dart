import 'package:flutter/material.dart';
import 'package:flutter_1/pages/page02.dart';
import 'package:flutter_1/pages/page03.dart';
import 'package:flutter_1/pages/page04.dart';
import 'package:flutter_1/pages/page05.dart';
import 'package:flutter_1/pages/page06.dart';
import 'package:flutter_1/pages/page07.dart';

class Page01 extends StatefulWidget {
  @override
  _Page01State createState() => _Page01State();
}

class _Page01State extends State<Page01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Inicio"),
          centerTitle: true,
          //automaticallyImplyLeading: false,
        ),
        body: cuerpo(context));
  }
}

Widget cuerpo(context) {
  return Container(
      //decoration: BoxDecoration(
      //    image: DecorationImage(
      //        image: NetworkImage("https://fondosmil.com/fondo/23222.jpg"),
      //        fit: BoxFit.cover)),
      child: Center(
          child: ListView(
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page02()));
              },
              child: Text("📜 Ir a términos y condiciones")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page03()));
              },
              child: Text("📢 Ir a Alert Dialog")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page04()));
              },
              child: Text("🚀 Ir a APIs >> Clases")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page05()));
              },
              child: Text("🚀 Ir a APIs >> Listas")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page06()));
              },
              child: Text("🚀 Ir a APIs >> Future/http/FutureBuilder")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page07()));
              },
              child: Text("🧭 Ir a Bottom Navigation Bar")),
        ],
      )
    ],
  )));
}
