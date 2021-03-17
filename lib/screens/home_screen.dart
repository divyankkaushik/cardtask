import 'package:cardtask/screens/tabs/trending_tab.dart';
import 'package:cardtask/widgets/categories.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final TextStyle appbarTextstyle = TextStyle(
    color: Colors.black,
    fontSize: 25.0,
    fontWeight: FontWeight.w600,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   title: Text(
      //     "Locations",
      //     style: appbarTextstyle,
      //   ),
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              // custom appbar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Locations",
                    style: appbarTextstyle,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://i.pinimg.com/originals/93/25/7d/93257da860d6ff6ac907190300ecda57.jpg"),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.2),
                              offset: const Offset(0.0, 8.0),
                              blurRadius: 5.0,
                              spreadRadius: 2.0,
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: 1,
                        right: 1,
                        child: Icon(
                          Icons.circle,
                          color: Colors.blue,
                          size: 15.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Categories(),
              SizedBox(
                height: 20.0,
              ),
              Trendingtab(),
            ],
          ),
        ),
      ),
    );
  }
}
