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
        //appBar: AppBar(
        //  title: const Text("Filas, columnas y botones"),
        //  ),
        body: cuerpo());
  }
}

Widget cuerpo() {
  return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage("https://fondosmil.com/fondo/23222.jpg"),
              fit: BoxFit.cover)),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          nombre(),
          campoUsuario(),
          campoContrasena(),
          SizedBox(
            height: 15,
          ),
          botonEntrar(),
        ],
      )));
}

Widget nombre() {
  return Text("Sign in",
      style: TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
          fontSize: 35.0,
          fontWeight: FontWeight.bold));
}

Widget campoUsuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    child: TextField(
        decoration: InputDecoration(
      hintText: "User",
      fillColor: Colors.white,
      filled: true,
    )),
  );
}

Widget campoContrasena() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Password",
          fillColor: Colors.white,
          filled: true,
        )),
  );
}

Widget botonEntrar() {
  return ElevatedButton(
      onPressed: () {},
      child: Text(
        "Enter",
        style: TextStyle(fontSize: 25, color: Colors.white),
      ));
}
