import 'package:flutter/material.dart';

class BNavigation extends StatefulWidget {
  final Function currenIndex;
  const BNavigation({Key? key, required this.currenIndex}) : super(key: key);

  @override
  _BNavigationState createState() => _BNavigationState();
}

class _BNavigationState extends State<BNavigation> {
  int _actualPage = 0;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: index,
        onTap: (int i) {
          setState(() {
            index = i;
            widget.currenIndex(i);
          });
        },
        iconSize: 25.0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.feed), label: "Legal"),
          BottomNavigationBarItem(
              icon: Icon(Icons.announcement), label: "Alert"),
          BottomNavigationBarItem(
              icon: Icon(Icons.donut_small), label: "Clases"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Lista"),
          BottomNavigationBarItem(
              icon: Icon(Icons.sentiment_very_satisfied), label: "Giphy"),
          BottomNavigationBarItem(
              icon: Icon(Icons.space_dashboard), label: "Nav"),
        ]);
  }
}
