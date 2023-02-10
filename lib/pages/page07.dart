import 'package:flutter/material.dart';
import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Page07 extends StatefulWidget {
  @override
  _Page07State createState() => _Page07State();

  List<String> imgList = [];
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
            BottomNavigationBarItem(icon: Icon(Icons.image), label: "Carrusel")
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

class PaginaUsers extends StatefulWidget {
  const PaginaUsers({Key? key}) : super(key: key);
  @override
  State<PaginaUsers> createState() => _PaginaUsersState();
}

class _PaginaUsersState extends State<PaginaUsers> {
  int activeIndex = 0;

  List<String> urlImages = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(
        height: 40,
      ),
      CarouselSlider.builder(
          itemCount: urlImages.length,
          itemBuilder: (context, index, realIndex) {
            final urlImage = urlImages[index];
            return buildImage(urlImage, index);
          },
          options: CarouselOptions(
            height: 400,
            autoPlay: true,
            //viewportFraction: 1,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index;
              });
            },
          )),
      SizedBox(
        height: 20,
      ),
      buildIndicator(),
    ]);
  }

  Widget buildImage(String urlImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        color: Colors.grey,
        child: Image.network(
          urlImage,
          fit: BoxFit.cover,
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
        effect: WormEffect(
          dotHeight: 10,
          dotWidth: 10,
          activeDotColor: Color.fromARGB(255, 87, 87, 87),
        ),
      );
}

Color randomColor() {
  return Color.fromARGB(
    255,
    Random().nextInt(256),
    Random().nextInt(256),
    Random().nextInt(256),
  );
}
