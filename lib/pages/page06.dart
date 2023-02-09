import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_1/models/Gif.dart';
import 'package:http/http.dart' as http;

class Page06 extends StatefulWidget {
  @override
  _Page06State createState() => _Page06State();
}

class _Page06State extends State<Page06> {
  Future<List<Gif>> _listadoGifs = Future.value([]);

  Future<List<Gif>> _getGifs() async {
    final response = await http.get(Uri.parse(
        "https://api.giphy.com/v1/gifs/trending?api_key=f3hlLQFrgBUvQuBbqFWOHYnjDEWoysBQ&limit=5&rating=g"));

    List<Gif> gifs = [];

    if (response.statusCode == 200) {
      String body = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(body);

      for (var item in jsonData["data"]) {
        gifs.add(Gif(item["title"], item["images"]["downsized"]["url"]));
      }

      return gifs;
    } else {
      throw Exception("Falló la conexión");
    }

    return []; // Reemplaza este valor con la lista de gifs que obtengas.
  }

  @override
  void initState() {
    super.initState();
    _listadoGifs = _getGifs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 111, 54, 244),
          title: Text("APIs"),
          centerTitle: true,
        ),
        body: Center(
          child: Text("Hola"),
        ));
  }
}
