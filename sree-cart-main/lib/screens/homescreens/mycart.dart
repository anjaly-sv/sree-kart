import 'package:flutter/material.dart';
import '../subclasses/Text.dart';

// void main() {
//   runApp(MaterialApp(
//     home: cart(),
//   ));
// }

class cart extends StatelessWidget {
  const cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff1e7d5d),
      body: Stack(
        children: [
          AppBar(
            backgroundColor: Color(0xff1e7d5d),
            toolbarOpacity: 1,
            toolbarHeight: 50,
            title: Center(
              child: text(
                  texts: "My Cart",
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                  fontsize: 20),
            ),
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
            ),
          ),
          Positioned(
            height: 650,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.all(10),
              // height: 550,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xffe2e4e1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return container();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class container extends StatelessWidget {
  const container({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(2, 2),
              color: Colors.black12,
            ),
            BoxShadow(
              offset: Offset(2, 2),
              color: Colors.black12,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                child: Image(
                    // fit: BoxFit.fill,
                    image: NetworkImage(
                  "https://thumbs.dreamstime.com/b/tomatoes-half-tomato-isolated-white-png-file-transparent-background-tomatoes-half-tomato-isolated-white-136961939.jpg",
                )),
              ),
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                text(texts: "Tommato"),
                SizedBox(
                  height: 10,
                ),
                text(texts: "4.45")
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.minimize),
                        color: Colors.black,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Text("kg"),
                        color: Colors.black,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add),
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
