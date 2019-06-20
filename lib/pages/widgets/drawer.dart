import 'package:dark_mode/provider/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget drawer(BuildContext context) {
  final ThemeChanger themeChanger = Provider.of<ThemeChanger>(context);

  var header = DrawerHeader(
      child: Center(
    child: Text(
      "Dark mode",
      style: TextStyle(fontSize: 30.0),
    ),
  ));

  var lightItem = ListTile(
      title: Text("Light theme"),
      leading: Icon(
        Icons.brightness_high,
        color: Colors.amber,
      ),
      onTap: () {
        themeChanger.setTheme(ThemeData.light());
      });

  var darkItem = ListTile(
      title: Text("Dark theme"),
      leading: Icon(
        Icons.brightness_4,
      ),
      onTap: () {
        themeChanger.setTheme(ThemeData.dark());
      });

  return Drawer(
      child: ListView(
    children: <Widget>[header, lightItem, darkItem],
  ));
}
