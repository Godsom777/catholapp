import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../main.dart';

class ShortDailyReading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);

    return CarouselSlider(
      options: CarouselOptions(
        initialPage: 1,
        height: ScreenSize.verticalBlockSize * 20, // 20% of screen height

        enableInfiniteScroll: false,
      ),
      items: [
        Container(
          color: Colors.blue,
          child: Center(
            child: Text(
              'Card 1',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ),
        Container(
          color: Colors.green,
          child: Center(
            child: Text(
              'Card 2',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ),
        Container(
          color: Colors.orange,
          child: Center(
            child: Text(
              'Card 3',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
