import 'package:flutter/material.dart';
import 'dart:math';

class Page07 extends StatefulWidget {
  @override
  _Page07State createState() => _Page07State();
}

class _Page07State extends State<Page07> {
  int _actualPage = 0;

  List<Widget> _pages = [
    PaginaHome(),
    PaginaUsers(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 146, 156),
          title: Text("Bottom Navigation Bar"),
          centerTitle: true,
          //automaticallyImplyLeading: false,
        ),
        body: _pages[_actualPage],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _actualPage = index;
            });
          },
          currentIndex: _actualPage,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.format_shapes), label: "Formas A."),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle), label: "Users")
          ],
        ));
  }
}

class PaginaHome extends StatefulWidget {
  const PaginaHome({Key? key}) : super(key: key);

  @override
  State<PaginaHome> createState() => _PaginaHomeState();
}

class _PaginaHomeState extends State<PaginaHome> {
  double _width = 100.0;
  double _heigh = 100.0;
  Color _color = Colors.blue;
  BorderRadius _borderRadius = BorderRadius.circular(10);

  double lower = 30.0;
  double upper = 300.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
              child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            curve: Curves.fastOutSlowIn,
            width: _width,
            height: _heigh,
            decoration: BoxDecoration(
              borderRadius: _borderRadius,
              color: _color,
            ),
          )),
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                _width = (Random().nextDouble() * (upper - lower)) + lower;
                _heigh = (Random().nextDouble() * (upper - lower)) + lower;
                _color = randomColor();
                _borderRadius =
                    BorderRadius.circular(Random().nextInt(40).toDouble());
              });
            },
            child: Text("Cambiar Forma")),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}

class PaginaUsers extends StatelessWidget {
  const PaginaUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Página Users"));
  }
}

Color randomColor() {
  return Color.fromARGB(
    255,
    Random().nextInt(256),
    Random().nextInt(256),
    Random().nextInt(256),
  );
}
