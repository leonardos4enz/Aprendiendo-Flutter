import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Page04 extends StatefulWidget {
  @override
  _Page04State createState() => _Page04State();
}

class _Page04State extends State<Page04> {
  Empresa _facebook = new Empresa("Facebook", "Mark Zuckerberg", 500);

  int value = 0;

  _loadValue() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      value = (prefs.getInt('value') ?? 100);
    });
  }

  _saveValue() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('value', value);
  }

  void _incrementValue() {
    setState(() {
      value--;
    });
    _saveValue();
  }

  void _resetValue() {
    setState(() {
      value = 100;
    });
    _saveValue();
  }

  @override
  void initState() {
    super.initState();
    _loadValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 35, 179, 95),
        title: Text("API » Clases"),
        centerTitle: true,
        //automaticallyImplyLeading: false,
      ),
      body: FutureBuilder(
        future: SharedPreferences.getInstance(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: value > 0
                      ? () {
                          _incrementValue();
                        }
                      : null,
                  splashColor: Colors.transparent.withOpacity(0.1),
                  child: Image.network(
                    value > 0
                        ? 'https://static.vecteezy.com/system/resources/previews/009/384/648/original/eggs-clipart-design-illustration-free-png.png'
                        : 'https://media.tenor.com/hOjFPNOPt2EAAAAM/chick-pulcino.gif',
                    width: 300,
                    height: 200,
                    fit: BoxFit.fitHeight,
                    scale: 1.0,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  value < 1 ? '¡Felicidades!' : '$value',
                  style: TextStyle(fontSize: 50),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _resetValue,
        tooltip: 'Increment',
        child: Icon(Icons.refresh),
      ),
    );
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
