import 'package:flutter/material.dart';
import 'package:flutter_1/main.dart';
import 'package:flutter_1/pages/page01.dart';

class Page02 extends StatelessWidget {
  const Page02({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Terminos y Condiciones"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Text(
            "Terminos y condiciones",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          Text(
            "Para usar esta aplicacion es necesario que aceptes los terminos y condiciones. Para usar esta aplicacion es necesario que aceptes los terminos y condiciones. Para usar esta aplicacion es necesario que aceptes los terminos y condiciones. Para usar esta aplicacion es necesario que aceptes los terminos y condiciones. Para usar esta aplicacion es necesario que aceptes los terminos y condiciones. ",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 15),
          Text(
            "Para usar esta aplicacion es necesario que aceptes los terminos y condiciones. Para usar esta aplicacion es necesario que aceptes los terminos y condiciones. Para usar esta aplicacion es necesario que aceptes los terminos y condiciones. Para usar esta aplicacion es necesario que aceptes los terminos y condiciones. Para usar esta aplicacion es necesario que aceptes los terminos y condiciones. ",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, padding: EdgeInsets.all(15)),
              onPressed: () {
                //Navigator.push(
                //    context, MaterialPageRoute(builder: (context) => MyApp()));
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Acepto todo",
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ))
        ]),
      ),
    );
  }
}
//Terminos y condiciones
