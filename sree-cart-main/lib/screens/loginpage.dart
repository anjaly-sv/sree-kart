import 'package:flutter/material.dart';
import 'Signup.dart';
import 'screen2.dart';
import 'subclasses/Text.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                height: 80,
              ),
              text(
                texts: "Login",
                fontsize: 30,
              ),
              SizedBox(
                height: 25,
              ),
              Image(height: 150, image: AssetImage("lib/assetimages/kudumbasree-logo-019B5D2B6C-seeklogo.com.png")),
              SizedBox(
                height: 25,
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
                    hintText: "E-mail"),
              ),
              SizedBox(
                height: 25,
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
                height: 5,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: text(
                  texts: "Forgotpassword?",
                  color: Color(0xff414141),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(100, 50), primary: Color(0xff414141), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottamAppbar(),
                    )),
                child: Center(
                  child: text(
                    texts: "SignIn",
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
                  Text("New User?"),
                  TextButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          )),
                      child: text(
                        texts: "SignUp",
                        color: Colors.black,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
