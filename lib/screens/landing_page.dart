import 'package:catholic_app/components/short_daily_reading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:catholic_liturgy/catholic_liturgy.dart';
import 'package:html/parser.dart';
import 'package:intl/intl.dart';
import 'dart:convert';

import '../components/saint/saints.dart';
import '../components/session_titles.dart';
import '../main.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  LiturgyModel? _liturgyModel;

  // @override
  // void initState() {
  //   super.initState();
  //   _fetchLiturgy();
  // }

  // Future<void> _fetchLiturgy() async {
  //   String url = 'https://www.liturgiadelleore.it/';
  //   String? readings = await fetchLiturgy(url);
  //   if (readings != null) {
  //     _readings = jsonDecode(readings);
  //   }
  // }

  // Future<String?> fetchLiturgy(String url) async {
  //   try {
  //     final response = await http.get(Uri.parse(url));
  //     if (response.statusCode == 200) {
  //       final document = parse(response.body);
  //       final element = document.querySelector('.testoliturgia');
  //       if (element != null) {
  //         final readings = element.innerHtml;
  //         return readings;
  //       } else {
  //         return null;
  //       }
  //     } else {
  //       return null;
  //     }
  //   } catch (error) {
  //     return null;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    // if (_liturgyModel == null) {
    //   return Scaffold(
    //     body: Center(child: CircularProgressIndicator()),
    //   );
    // } else {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Color of the Day:',
                // ${_getLiturgicalColor(_liturgyModel!.category).toString()}',
                style: TextStyle(fontSize: 14),
              ),
              Text(
                'Today\'s Date: ${DateFormat('MMMM d').format(DateTime.now())}',
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
          backgroundColor: const Color(0xFFF7F7F7),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Divider(),
              SizedBox(height: ScreenSize.verticalBlockSize * 1),
              SessionTitles('Daily Readings', 'Swipe the card to see more days',
                  AssetImage('assets/images/bible.png')),
               ShortDailyReading(),
              const Divider(),
              const SizedBox(height: 0),
              SessionTitles(
                  'Saint/s Of The Day',
                  'We Celebrate The Following Matyrs',
                  AssetImage('assets/images/pray.png')),
              const SaintOfTheDay()
            ],
          ),
        ));
  }
}

Color _getLiturgicalColor(LiturgyEnum category) {
  switch (category) {
    case LiturgyEnum.lent:
      return Colors.purple;
    case LiturgyEnum.easter:
      return Colors.white;
    case LiturgyEnum.ordinaryTime:
      return Colors.green;
    case LiturgyEnum.advent:
      return Colors.blue;
    case LiturgyEnum.christmas:
      return Colors.red;
    case LiturgyEnum.holyWeek:
      return Colors.black;
    // Add more cases for other liturgical seasons
    default:
      return Colors.white;
  }
}
