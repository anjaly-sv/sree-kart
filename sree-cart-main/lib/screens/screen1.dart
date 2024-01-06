import 'package:flutter/material.dart';
import 'Signup.dart';
import 'loginpage.dart';
import 'screen2.dart';
import 'subclasses/Text.dart';

void main() {
  runApp(MaterialApp(
    home: Screens(),
  ));
}

class Screens extends StatelessWidget {
  const Screens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                // tileMode: TileMode.mirror,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(29, 91, 66, 2),
                  Color.fromRGBO(29, 91, 66, 5),
                  Color(0xff1e7d5d),
                  Color(0xff1e7d5d)
                ]),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 150,
                    height: 140,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadiusDirectional.all(Radius.circular(200)),
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage(
                            "lib/assetimages/kudumbasree-logo-019B5D2B6C-seeklogo.com.png",
                          ),
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                text(
                  texts: 'Fresh',
                  color: Colors.white,
                  fontsize: 45,
                ),
                text(
                  texts: 'cart',
                  color: Colors.amber,
                  fontsize: 35,
                  fontStyle: FontStyle.italic,
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(80, 50),
                         primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          )),
                      child: Center(
                          child: text(
                        texts: "SignIn",
                        color: Colors.amber,
                      )),
                    ),
                    SizedBox(width: 10,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(80, 50),
                          primary: Colors.amber,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          )),
                      child: Center(
                          child: text(
                        texts: "SignUp",
                        color: Colors.white,
                      )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


