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
        title: const Text("Tesla"),
      ),
      body: ListView(
        children: [
          Container(
              padding: EdgeInsets.all(30.0),
              child: Image.network(
                  "https://tesla-cdn.thron.com/delivery/public/image/tesla/f53054f4-30da-4a94-8aac-1aa6f662996d/bvlatuR/std/1200x628/Model-S-Social?quality=auto-medium&format=auto")),
          Container(
              padding: EdgeInsets.all(30.0),
              child: Image.network(
                  "https://acroadtrip.blob.core.windows.net/catalogo-imagenes/s/RT_V_e49488677d5d48f9aa0e6f8ebb09cdcd.jpg")),
          Container(
              padding: EdgeInsets.all(30.0),
              child: Image.network(
                  "https://www.autobild.es/sites/autobild.es/public/dc/fotos/Tesla_Cybertruck.jpg")),
        ],
      ),
    );
  }
}
