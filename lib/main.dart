import 'package:flutter/material.dart';
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
        title: const Text("Filas, columnas y botones"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 50,
              child: Text(
                "Hola 01",
                textAlign: TextAlign.center,
              )),
          Text("Hola 02"),
          Text("Hola 03"),
        ],
      ),
    );
  }
}
