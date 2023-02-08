import 'package:flutter/material.dart';

class Page03 extends StatefulWidget {
  @override
  _Page03State createState() => _Page03State();
}

class _Page03State extends State<Page03> {
  bool _suscrito = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 244, 54, 187),
          title: Text("Alert Dialog"),
          centerTitle: true,
          //automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: !_suscrito ? Colors.red : Colors.blue,
                      padding: EdgeInsets.all(15)),
                  onPressed: () => {mostrarAlerta(context)},
                  child: Text(!_suscrito ? "Subscribirme" : "Dejar de seguir",
                      style: TextStyle(fontSize: 20))),
              SizedBox(
                height: 100,
              ),
              Text(
                _suscrito ? "Subscrito" : "No suscripto",
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ));
  }

  void mostrarAlerta(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            _suscrito ? "Cancelar subscripción" : "Subscríbete",
            style: TextStyle(fontSize: 20),
          ),
          content: Text(_suscrito
              ? "¿Quieres dejar de seguir el canal?"
              : "¿Quieres subscribirte?"),
          actions: [
            TextButton(
                onPressed: () {
                  print("No");
                  Navigator.pop(context);
                },
                child: Text("No")),
            TextButton(
                onPressed: () {
                  print("Si");
                  setState(() {
                    _suscrito = !_suscrito;
                  });
                  Navigator.pop(context);
                },
                child: Text("Si"))
          ],
        );
      },
    );
  }
}
