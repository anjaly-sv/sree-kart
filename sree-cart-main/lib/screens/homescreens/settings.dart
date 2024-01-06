import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1e7d5d)                 ,
        title: Text('Settings'), // You can add a title if needed
      ),
      drawer:  Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(8),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    color: Color(0xff1e7d5d)
                ),
                currentAccountPicture: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text("data")),
                ),
                accountEmail: Text('anjali@123gmail.com'),
                margin: EdgeInsets.only(bottom: 5),
                accountName: Text('aggag'),
              ),
            ),
            // Add more items to the drawer if needed
            IconButton(onPressed: ()=>Navigator.pop(context), icon: Icon(Icons.arrow_left_sharp))
          ],
        ),
      ),
    );
  }
}