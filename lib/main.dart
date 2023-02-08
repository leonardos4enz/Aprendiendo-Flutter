import 'package:flutter/material.dart';
import 'package:flutter_1/pages/page02.dart';
import 'package:flutter_1/pages/page03.dart';
import 'package:flutter_1/pages/page04.dart';
import 'package:flutter_1/pages/page05.dart';
//paqiete de importacion

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inicio',
      theme: ThemeData(
        //color del tema
        primarySwatch: Colors.blue,
      ),
      home: const Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 110, 255),
          title: const Text("Inicio 🏚"),
          centerTitle: true,
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
          child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
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
          child: Text("🚧 Ir a APIs >> Clases")),
      ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Page05()));
          },
          child: Text("🚧 Ir a APIs >> Listas")),
    ],
  )));
}
