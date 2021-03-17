import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Featured", "Popular", "Trending"];
  int selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Stack(children: [
        Positioned(
          bottom: 11,
          child: Container(
            margin: EdgeInsets.only(top: 10.0), //top padding 5
            height: 2,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.withOpacity(.5),
          ),
        ),
        ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ]),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? Colors.black : Colors.grey,
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 10.0), //top padding 5
                height: 3,
                width: 50,
                color: selectedIndex == index
                    ? Colors.blue.withOpacity(0.5)
                    : Colors.transparent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
