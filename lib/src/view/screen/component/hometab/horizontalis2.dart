import 'package:flutter/material.dart';

class HorizontalLis2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            children: [
              _buildCircleImage1(),
              _buildText1(),
            ],
          ),
          Column(
            children: [
              _buildCircleImage2(),
              _buildText2(),
            ],
          ),
          Column(
            children: [
              _buildCircleImage3(),
              _buildText3(),
            ],
          ),
          Column(
            children: [
              _buildCircleImage5(),
              _buildText5(),
            ],
          ),
          Column(
            children: [
              _buildCircleImage6(),
              _buildText6(),
            ],
          ),
          Column(
            children: [
              _buildCircleImage7(),
              _buildText7(),
            ],
          ),
          Column(
            children: [
              _buildCircleImage8(),
              _buildText8(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCircleImage1() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Container(
        height: 75,
        width: 75,
        padding: EdgeInsets.all(0.5),
        decoration: new BoxDecoration(
            color: Colors.brown,
            border: new Border.all(color: Colors.black),
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(40),
              topRight: const Radius.circular(40),
              bottomLeft: const Radius.circular(40),
              bottomRight: const Radius.circular(40),
            )),
        child: ClipOval(
          child: Image.asset(
            'assets/images/a.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildText1() {
    return Text(
      'Youths',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildCircleImage2() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Container(
        height: 75,
        width: 75,
        padding: EdgeInsets.all(0.5),
        decoration: new BoxDecoration(
            color: Colors.brown,
            border: new Border.all(color: Colors.black),
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(40),
              topRight: const Radius.circular(40),
              bottomLeft: const Radius.circular(40),
              bottomRight: const Radius.circular(40),
            )),
        child: ClipOval(
          child: Image.asset(
            'assets/images/single.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildText2() {
    return Text(
      'Singe',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildCircleImage3() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Container(
        height: 75,
        width: 75,
        padding: EdgeInsets.all(0.5),
        decoration: new BoxDecoration(
            color: Colors.brown,
            border: new Border.all(color: Colors.black),
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(40),
              topRight: const Radius.circular(40),
              bottomLeft: const Radius.circular(40),
              bottomRight: const Radius.circular(40),
            )),
        child: ClipOval(
          child: Image.asset(
            'assets/images/married.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildText3() {
    return Text(
      'Married',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildCircleImage5() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Container(
        height: 75,
        width: 75,
        padding: EdgeInsets.all(0.5),
        decoration: new BoxDecoration(
            color: Colors.brown,
            border: new Border.all(color: Colors.black),
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(40),
              topRight: const Radius.circular(40),
              bottomLeft: const Radius.circular(40),
              bottomRight: const Radius.circular(40),
            )),
        child: ClipOval(
          child: Image.asset(
            'assets/images/young.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildText5() {
    return Text(
      'Young Couples',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildCircleImage6() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Container(
        height: 75,
        width: 75,
        padding: EdgeInsets.all(0.5),
        decoration: new BoxDecoration(
            color: Colors.brown,
            border: new Border.all(color: Colors.black),
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(40),
              topRight: const Radius.circular(40),
              bottomLeft: const Radius.circular(40),
              bottomRight: const Radius.circular(40),
            )),
        child: ClipOval(
          child: Image.asset(
            'assets/images/divorced.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildText6() {
    return Text(
      'Divorced',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildCircleImage7() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Container(
        height: 75,
        width: 75,
        padding: EdgeInsets.all(0.5),
        decoration: new BoxDecoration(
            color: Colors.brown,
            border: new Border.all(color: Colors.black),
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(40),
              topRight: const Radius.circular(40),
              bottomLeft: const Radius.circular(40),
              bottomRight: const Radius.circular(40),
            )),
        child: ClipOval(
          child: Image.asset(
            'assets/images/alumni.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildText7() {
    return Text(
      'Alumni',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildCircleImage8() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Container(
        height: 75,
        width: 75,
        padding: EdgeInsets.all(0.5),
        decoration: new BoxDecoration(
            color: Colors.brown,
            border: new Border.all(color: Colors.black),
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(40),
              topRight: const Radius.circular(40),
              bottomLeft: const Radius.circular(40),
              bottomRight: const Radius.circular(40),
            )),
        child: ClipOval(
          child: Image.asset(
            'assets/images/widow.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildText8() {
    return Text(
      'Widows & widowers',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
