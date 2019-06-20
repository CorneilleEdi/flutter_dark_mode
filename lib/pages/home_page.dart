import 'package:dark_mode/pages/widgets/drawer.dart';
import 'package:dark_mode/provider/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeChanger themeChanger = Provider.of<ThemeChanger>(context);

    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: new Text('Dark mode'),
      ),
      drawer: drawer(context),
      body: Center(
          child: Text(themeChanger.getActualTheme(),
              style: TextStyle(fontSize: 25.0))),
    );
  }
}
