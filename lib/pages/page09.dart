import 'package:flutter/material.dart';

class Page09 extends StatelessWidget {
  final String texto;
  const Page09(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pasar información"),
      ),
      body: Center(
        child: Container(child: Text(texto)),
      ),
    );
  }
}
