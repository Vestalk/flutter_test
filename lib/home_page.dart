import 'package:flutter/material.dart';
import 'color_manager.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _randomManager;
  Color _homePageColor;

  _HomePageState() {
    _randomManager = ColorManager();
    _homePageColor = _randomManager.getRandomColor();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            _homePageColor = _randomManager.getRandomColor();
          });
        },
        child: Container(
          color: _homePageColor,
          child: Center(
              child: Text('Hey there')
          ),
        ));
  }
}