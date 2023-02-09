import 'package:flutter/material.dart';

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
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle), label: "Users")
          ],
        ));
  }
}

class PaginaHome extends StatelessWidget {
  const PaginaHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Página Home"));
  }
}

class PaginaUsers extends StatelessWidget {
  const PaginaUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Página Users"));
  }
}
