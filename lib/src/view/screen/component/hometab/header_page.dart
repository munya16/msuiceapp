import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Header_page extends StatefulWidget {
  const Header_page({Key? key}) : super(key: key);

  @override
  State<Header_page> createState() => _Header_pageState();
}

class _Header_pageState extends State<Header_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child:  new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/1.png'),
          AssetImage('assets/images/f.png'),
          AssetImage('assets/images/4.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
      ),
    );

  }
}
