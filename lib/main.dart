import 'package:catholic_app/screens/homescreen.dart';
import 'package:flutter_section_list/flutter_section_list.dart';
import 'package:flutter_section_list/flutter_section_grid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/bottom_nav.dart';

import 'package:flutter/widgets.dart';

class ScreenSize {
  static late double width;
  static late double height;
  static late double blockSize;
  static late double verticalBlockSize;

  void init(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    // blockSize and verticalBlockSize can be used for height and width for all devices
    blockSize = width / 100;
    verticalBlockSize = height / 100;
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FlutterSectionListDemo',
        theme: ThemeData(
          primarySwatch:  Colors.deepPurple,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeScreen());
  }
}
