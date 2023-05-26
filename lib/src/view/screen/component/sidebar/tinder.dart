import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class Tinder extends StatefulWidget {
  const Tinder({Key? key}) : super(key: key);

  @override
  _TinderState createState() => _TinderState();
}

class _TinderState extends State<Tinder>
    with TickerProviderStateMixin {
  List<String> welcomeImages = [
    'assets/images/4.jpg',
    'assets/images/5.jpg',
    'assets/images/6.jpg',
    'assets/images/8.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    CardController controller; //Use this to trigger swap.
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Events'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.7,
        child: TinderSwapCard(
          orientation: AmassOrientation.BOTTOM,
          totalNum: 6,
          stackNum: 4,
          swipeEdge: 4.0,
          maxWidth: MediaQuery.of(context).size.width * 0.9,
          maxHeight: MediaQuery.of(context).size.width * 0.9,
          minWidth: MediaQuery.of(context).size.width * 0.8,
          minHeight: MediaQuery.of(context).size.width * 0.8,
          cardBuilder: (context, index) => Card(
            child: Image.asset('${welcomeImages[index]}'),
          ),
          cardController: controller = CardController(),
          swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
            if (align.x < 0) {
            } else if (align.x > 0) {}
          },
          swipeCompleteCallback:
              (CardSwipeOrientation orientaion, int index) {},
        ),
      ),
    );
  }
}
