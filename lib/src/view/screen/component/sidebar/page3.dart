import 'package:flutter/material.dart';
import 'package:ice/src/const/app_font.dart';

class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  var product_list = [
    {
      "name": "Blessing Chisoro",
      "picture": "assets/images/alumni.jpg",
      "old_price": 2004,
      "price": 2000,
    },
    {
      "name": "Miriam Chisvo",
      "picture": "assets/images/alumni.jpg",
      "old_price": 2009,
      "price": 2005,
    },
    {
      "name": "Lee Jere",
      "picture": "assets/images/alumni.jpg",
      "old_price": 2019,
      "price": 2014,
    },
    {
      "name": "Ben Ten",
      "picture": "assets/images/alumni.jpg",
      "old_price": 2020,
      "price": 2017,
    },
    {
      "name": "Zatima Zazai",
      "picture": "assets/images/alumni.jpg",
      "old_price": 2015,
      "price": 2011,
    },
    {
      "name": "Marry More",
      "picture": "assets/images/alumni.jpg",
      "old_price": 2018,
      "price": 2014,
    },
    {
      "name": "Gay Matambo",
      "picture": "assets/images/alumni.jpg",
      "old_price": 2005,
      "price": 2001,
    },
  ];

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
              "Behold Our Alumni",
              style: AppFont.semiBold.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
    body: GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
              prod_name: product_list[index]['name'],
              prod_pricture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            ),
          );
        }));
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_pricture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () {},
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        prod_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        "$prod_price",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w800),
                      ),
                      subtitle: Text(
                        "$prod_old_price",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w800,
                            decoration
                                :TextDecoration.lineThrough),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    prod_pricture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
