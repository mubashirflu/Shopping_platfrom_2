import 'package:flutter/material.dart';
import 'package:flutter_profile_1/buy.dart';
import 'package:flutter_profile_1/fashion.dart';
import 'package:flutter_profile_1/jewellery.dart';
import 'package:flutter_profile_1/main.dart';
import 'package:ionicons/ionicons.dart';

Widget myDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          accountName: Text("Dixcy Scott.Pk"),
          accountEmail: Text("yawaseo791@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage("assets/images/mu3.jpg"),
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return jewellery();
            }));
          },
          leading: Icon(Icons.menu),
          title: Text("Jewellery"),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext Context) {
              return fashion();
            }));
          },
          leading: Icon(Icons.menu),
          title: Text("Fashion"),
          trailing: Icon(Icons.arrow_forward),
        ),
      ],
    ),
  );
}
