import 'package:flutter/material.dart';

class Page05 extends StatefulWidget {
  @override
  _Page05State createState() => _Page05State();
}

class _Page05State extends State<Page05> {
  List<People> _people = [
    People("Jose", "Galdamez", "+52 81 1227 5792"),
    People("Leonardo", "Sáenz", "+52 1212 3344"),
    People("Roberto", "Martinez", "+52 81 1227 5792"),
    People("Elon", "Musk", "+52 1212 3344"),
    People("Cohen", "Da Vinci", "+52 81 1227 5792"),
    People("Pedro", "Flores", "+52 1212 3344")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 35, 179, 95),
          title: Text("API » Lista Contactos"),
          centerTitle: true,
          //automaticallyImplyLeading: false,
        ),
        body: Center(
            child: ListView.builder(
                itemCount: _people.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onLongPress: () => _erasePerson(context, _people[index]),
                    onTap: () => {print(_people[index].name)},
                    title: Text(
                        _people[index].name + ' ' + _people[index].lastname),
                    subtitle: Text(_people[index].phone),
                    leading: CircleAvatar(
                      child: Text(_people[index].name.substring(0, 1)),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  );
                })));
  }

  _erasePerson(context, People persona) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: Text("Eliminar contacto"),
              content: Text("¿Está seguro de querer eliminar el contacto?"),
              actions: [
                TextButton(
                    onPressed: () =>
                        {print(persona.name), Navigator.pop(context)},
                    child: Text("Cancelar",
                        style: TextStyle(
                            color: Color.fromARGB(255, 54, 98, 244)))),
                TextButton(
                    onPressed: () => {
                          print(persona.name),
                          setState(() {
                            _people.remove(persona);
                            Navigator.pop(context);
                          }),
                          //Navigator.pop(context)
                        },
                    child: Text("Borrar",
                        style:
                            TextStyle(color: Color.fromARGB(255, 255, 17, 0)))),
              ],
            ));
  }
}

class People {
  String name = "";
  String lastname = "";
  String phone = "";

  People(String name, String lastname, String phone) {
    this.name = name;
    this.lastname = lastname;
    this.phone = phone;
  }
}
