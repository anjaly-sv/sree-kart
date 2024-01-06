import 'package:flutter/material.dart';
import 'package:sreekart/screens/loginpage.dart';

import 'subclasses/Text.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff414141),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              text(
                texts: "SignUp",
                fontsize: 30,
              ),
              SizedBox(
                height: 20,
              ),
              Image(height: 150, image: AssetImage("lib/assetimages/kudumbasree-logo-019B5D2B6C-seeklogo.com.png")),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    focusColor: Colors.black,
                    hintStyle: TextStyle(color: Color(0xff414141)),
                    labelText: "Name",
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black), borderRadius: BorderRadius.circular(6)),
                    // icon: Icon(Icons.email_rounded),
                    hintText: "Name"),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    focusColor: Colors.black,
                    hintStyle: TextStyle(color: Color(0xff414141)),
                    labelText: "E-mail",
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black), borderRadius: BorderRadius.circular(6)),
                    // icon: Icon(Icons.email_rounded),
                    hintText: "E-mail"),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    labelText: "password",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
                    // icon: Icon(Icons.email_rounded),
                    hintText: "password"),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    focusColor: Colors.black,
                    hintStyle: TextStyle(color: Color(0xff414141)),
                    labelText: "conformpassword",
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black), borderRadius: BorderRadius.circular(6)),
                    // icon: Icon(Icons.email_rounded),
                    hintText: "conformpassword"),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(100, 50), primary: Color(0xff414141), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    )),
                child: Center(
                  child: text(
                    texts: "SignUp",
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an acoount?"),
                  TextButton(
                    onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),)),
                    child: text(
                      texts: "Login",
                      color: Colors.black,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
