import 'package:flutter/material.dart';
import 'package:sreekart/screens/screen1.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screens(),
    );
  }
}
//A RenderFlex overflowed by 7.7 pixels on the right.