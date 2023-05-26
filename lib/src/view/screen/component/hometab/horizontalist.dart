import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
          height: 120,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //scrollDirection: Axis.horizontal,
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
      'Join Us this Sunday',
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
      'Connect with Us',
      style: TextStyle(
        color: Colors.red,
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
      'Connect with Others',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }

}
