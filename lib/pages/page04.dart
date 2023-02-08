import 'package:flutter/material.dart';

class Page04 extends StatefulWidget {
  @override
  _Page04State createState() => _Page04State();
}

class _Page04State extends State<Page04> {
  Empresa _facebook = new Empresa("Facebook", "Mark Zuckerberg", 500);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 111, 54, 244),
          title: Text("APIs"),
          centerTitle: true,
          //automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _facebook.ingresoAnual.toString(), // <-------------
                style: TextStyle(fontSize: 25),
              )
            ],
          ),
        ));
  }
}

class Empresa {
  String nombre = "";
  String propietario = "";
  int ingresoAnual = 0;

  Empresa(String nombre, String propietario, int ingreso) {
    this.nombre = nombre;
    this.propietario = propietario;
    this.ingresoAnual = ingreso;
  }
}
