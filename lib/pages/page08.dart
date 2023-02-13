import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_1/pages/page09.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page08 extends StatefulWidget {
  const Page08({super.key});

  @override
  State<Page08> createState() => _Page08State();
}

class _Page08State extends State<Page08> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _textoController = TextEditingController(text: "");

    return Scaffold(
        appBar: AppBar(
          title: Text("Pasar información"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      color: Colors.grey[200],
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(174, 158, 158, 158),
                            offset: Offset(4.0, 4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0)
                      ]),
                  child: TextField(
                    controller: _textoController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 20),
                      hintText: ("Ingresa Información"),
                      //filled: true,
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Color.fromARGB(255, 91, 109, 124),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Page09(_textoController.text),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(FontAwesomeIcons.star),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
