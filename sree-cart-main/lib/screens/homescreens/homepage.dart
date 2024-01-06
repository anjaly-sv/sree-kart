import 'package:flutter/material.dart';
import 'package:sreekart/screens/subclasses/gridviewimages.dart';
import 'package:sreekart/screens/subclasses/sidescrolling.dart';

import '../subclasses/Text.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff1e7d5d),
                ),
                child: Icon(
                  Icons.arrow_back_ios_new_sharp,
                  color: Color(0xffe2e3e5),
                )),
          ),
          title: Center(child: text(texts: "Search Food", color: Color(0xff1e7d5d))),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search_outlined,color: Color(0xff1e7d5d),))
          ],
        ),
        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Container(
        //     height: 50,
        //     decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(6),
        //         color: Colors.white),
        //     child: Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Row(
        //         children: [
        //           Icon(Icons.search, color: Color(0xff1e7d5d)),
        //           SizedBox(
        //             width: 5,
        //           ),
        //           text(
        //             texts: "Search Your Cart",
        //           )
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            width: 1000,
            decoration: BoxDecoration(
              color: Color(0xff1e7d5d),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://thumbs.dreamstime.com/b/tomatoes-half-tomato-isolated-white-png-file-transparent-background-tomatoes-half-tomato-isolated-white-136961939.jpg"),
                ),
              ),
            ),
          ),
        ),
        side(),
        Expanded(flex: 1,child: Grid())
      ],
    );
  }
}
