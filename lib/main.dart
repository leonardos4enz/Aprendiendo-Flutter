import 'package:flutter/material.dart';
import 'package:flutter_1/BNavigation/bottom_nav.dart';
import 'package:flutter_1/BNavigation/routes.dart';
//paqiete de importacion

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  int index = 0;
  BNavigation? myBNB;

  @override
  void initState() {
    myBNB = BNavigation(currenIndex: (i) {
      setState(() {
        index = i;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //  backgroundColor: Color.fromARGB(255, 0, 110, 255),
      //  title: const Text("Inicio 🏚"),
      //  centerTitle: true,
      //),
      // body: cuerpo(context),
      body: Routes(index: index),
      bottomNavigationBar: myBNB,
    );
  }
}

//a
