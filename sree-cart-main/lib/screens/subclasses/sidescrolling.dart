import 'package:flutter/material.dart';
import 'package:sreekart/screens/homescreens/mycart.dart';

class side extends StatelessWidget {
  const side({super.key,});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          button(text1: 'Tommato',),
          button(text1: 'Bakery',),
          button(text1: 'Drinks',),
          button(text1: 'Chips',)
        ],
      ),
    );
  }
}
class button extends StatelessWidget {
  final String? text1;
  const button({super.key,required this.text1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
         primary: Color(0xffe9bf01),
        ),
        onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>cart())),
        child: Center(
          child: Text(
            text1!,
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
