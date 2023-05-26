import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:ice/src/const/app_font.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ice/src/view/screen/component/sidebar/SRC.dart';

class Pagetwo extends StatefulWidget {
  const Pagetwo({Key? key}) : super(key: key);

  @override
  State<Pagetwo> createState() => _PagetwoState();
}

class _PagetwoState extends State<Pagetwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Behold Our Secretariat",
          style: AppFont.semiBold.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InteractiveCard(
              image: cards[0].image!,
              title: cards[0].title!,
              description: cards[0].description!,
            ),
            InteractiveCard(
              image: cards[1].image!,
              title: cards[1].title!,
              description: cards[1].description!,
            ),
            InteractiveCard(
              image: cards[2].image!,
              title: cards[2].title!,
              description: cards[2].description!,
            ),

          ],
        ),
      ),
    );
  }
}

class InteractiveCard extends StatefulWidget {
  final String image;
  final String title;
  final String description;
  const InteractiveCard({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  State<InteractiveCard> createState() => _InteractiveCardState();
}

class _InteractiveCardState extends State<InteractiveCard> {
  double height = 300.0;
  double width = 80.0;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          height = 300.0;
          width = 200.0;
        });
      },
      onExit: (event) {
        setState(() {
          height = 300.0;
          width = 100.0;
        });
      },
      child: AnimatedContainer(
        margin: const EdgeInsets.all(10.0),
        duration: const Duration(milliseconds: 575),
        curve: Curves.easeOut,
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              widget.image,
            ),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: const LinearGradient(colors: [
              Colors.transparent,
              Colors.transparent,
              Colors.black,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AnimatedRotation(
                duration: const Duration(milliseconds: 375),
                turns: height == 300.0 ? -1 / 4 : 0,
                curve: Curves.easeOut,
                child: AnimatedPadding(
                  duration: const Duration(milliseconds: 375),
                  padding: EdgeInsets.symmetric(
                      vertical: height == 300.0 ? 20.0 : 0.0),
                  child: Text(
                    widget.title,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 375),
                curve: Curves.easeOut,
                height: height == 300 ? 40.0 : 80.0,
                width: 200.0,
                color: Colors.transparent,
                padding: EdgeInsets.only(
                  top: height == 300 ? 100.0 : 20.0,
                ),
                clipBehavior: Clip.antiAlias,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 375),
                  opacity: height == 300 ? 0.0 : 1.0,
                  child: OverflowBox(
                    minWidth: 300.0,
                    minHeight: 80.0,
                    maxHeight: 100.0,
                    maxWidth: 400.0,
                    child: Text(
                      widget.description,
                      style: GoogleFonts.quicksand(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
