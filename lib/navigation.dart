// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        shrinkWrap: true,
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
            ),
            // ignore: sized_box_for_whitespace
            child: Container(
              width: double.maxFinite,
              height: double.maxFinite,
              child: Stack(
                children: [
                  Center(
                    child: Image.asset('images/varaprasad.jpg'),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 10,
                    child: InkWell(onTap: () {}, child: Icon(Icons.camera_alt)),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            shape: Border(
              top: BorderSide(
                  width: 6.0, color: Theme.of(context).backgroundColor),
              // bottom: BorderSide(width: 16.0, color: Colors.lightBlue.shade900),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text('Logout'),
                Icon(
                  Icons.lock_open,
                ),
              ],
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
