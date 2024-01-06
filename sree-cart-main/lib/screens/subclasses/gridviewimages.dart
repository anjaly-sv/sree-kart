import 'package:flutter/material.dart';
import 'package:sreekart/screens/screen1.dart';

import '../homescreens/buyscreen.dart';

void main() {
  runApp(MaterialApp(
    home: Grid(),
  ));
}

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: images.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 1, mainAxisSpacing: 1),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(6),
          child: GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BuyScreen(),)),
            child: Container(
              decoration: BoxDecoration(
                 color: Colors.white,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    child: Image(
                      fit: BoxFit.fill,
                      width: MediaQuery.of(context).size.width,
                        height: 125,
                        image: NetworkImage(images[index],)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      text(texts: "Tommato",color: Colors.black,),
                      text(texts: "₹ 250",color: Colors.black,),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

List images = [
  "https://thumbs.dreamstime.com/b/tomatoes-half-tomato-isolated-white-png-file-transparent-background-tomatoes-half-tomato-isolated-white-136961939.jpg",
  "https://thumbs.dreamstime.com/b/tomatoes-half-tomato-isolated-white-png-file-transparent-background-tomatoes-half-tomato-isolated-white-136961939.jpg",
  "https://thumbs.dreamstime.com/b/tomatoes-half-tomato-isolated-white-png-file-transparent-background-tomatoes-half-tomato-isolated-white-136961939.jpg",
  "https://thumbs.dreamstime.com/b/tomatoes-half-tomato-isolated-white-png-file-transparent-background-tomatoes-half-tomato-isolated-white-136961939.jpg",
  "https://thumbs.dreamstime.com/b/tomatoes-half-tomato-isolated-white-png-file-transparent-background-tomatoes-half-tomato-isolated-white-136961939.jpg",
  "https://thumbs.dreamstime.com/b/tomatoes-half-tomato-isolated-white-png-file-transparent-background-tomatoes-half-tomato-isolated-white-136961939.jpg",
  "https://thumbs.dreamstime.com/b/tomatoes-half-tomato-isolated-white-png-file-transparent-background-tomatoes-half-tomato-isolated-white-136961939.jpg",
  "https://thumbs.dreamstime.com/b/tomatoes-half-tomato-isolated-white-png-file-transparent-background-tomatoes-half-tomato-isolated-white-136961939.jpg",
];
