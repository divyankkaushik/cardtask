import 'package:cardtask/widgets/itemcard.dart';
import 'package:flutter/material.dart';

class Trendingtab extends StatefulWidget {
  @override
  _TrendingtabState createState() => _TrendingtabState();
}

class _TrendingtabState extends State<Trendingtab> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          ItemCard(
              "https://cdn.cnn.com/cnnnext/dam/assets/160920113150-beachfront-hotel-8--w-barcelona-super-169.jpg",
              "18",
              "Ocean at Algarve",
              "Enjoy view over sky blue ocean from your room",
              Icons.check_circle_outline),
          SizedBox(
            height: 20.0,
          ),
          ItemCard(
              "https://www.cardiff.ac.uk/__data/assets/image/0003/1527834/Cave-droplets.jpg",
              "23",
              "Antelope canyon",
              "Must have onn bucketList",
              Icons.check_box_outline_blank),
        ],
      ),
    );
  }
}
