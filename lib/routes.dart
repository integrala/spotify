import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify/screens/detail/list/mix.dart';
import 'package:spotify/screens/detail/list/rap.dart';
import 'package:spotify/screens/detail/list/relaxEdition.dart';
import 'package:spotify/screens/detail/list/relaxSoundtrack.dart';
import 'package:spotify/screens/detail/list/turkce.dart';
import 'package:spotify/screens/detail/list/turku.dart';
import 'package:spotify/screens/detail/list/up.dart';
import 'package:spotify/screens/detail/list/worldOfMusic.dart';
import 'package:spotify/screens/detail/list/yabanci.dart';

import 'homeView.dart';

class RouteGenarator {
  static Route<dynamic> routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const Home());

      case "/rap":
        return MaterialPageRoute(builder: (context) => const Rap());
      case "/yabanci":
        return MaterialPageRoute(builder: (context) => const Yabanci());
      case "/worldofmusic":
        return MaterialPageRoute(builder: (context) => const WorldOfMusic());
      case "/relaxedition":
        return MaterialPageRoute(builder: (context) => const RelaxEdition());
      case "/relaxsoundtrack":
        return MaterialPageRoute(builder: (context) => const RelaxSoundtrack());
      case "/mix":
        return MaterialPageRoute(builder: (context) => const MIX());
      case "/turkce":
        return MaterialPageRoute(builder: (context) => const Turkce());
      case "/up":
        return MaterialPageRoute(builder: (context) => const Up());
      case "/turku":
        return MaterialPageRoute(builder: (context) => const Turku());

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Card(
                    shadowColor: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      "SAYFA BULUNAMADI",
                      style: TextStyle(fontSize: 38, backgroundColor: Colors.deepPurple),
                    ),
                  ),
                  Text(
                    "404",
                    style: TextStyle(fontSize: 48),
                  ),
                ],
              ),
            ),
          ),
        );
    }
  }

  navigate(Widget page) {
    Platform.isAndroid ? MaterialPageRoute(builder: (context) => page) : CupertinoPageRoute(builder: (context) => page);
  }
}
