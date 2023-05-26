import 'package:ice/src/const/app_font.dart';
import 'package:ice/src/data/model/product.dart';
import 'package:ice/src/view/screen/component/hometab/horizontalist.dart';
import 'package:ice/src/view/screen/component/hometab/horizontalis2.dart';
import 'package:flutter/material.dart';

class Adio extends StatelessWidget {
  final List<Product>? listRecentProduct;

  const Adio({Key? key, this.listRecentProduct}) : super(key: key);

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
          "Audio Sermons",
          style: AppFont.semiBold.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
