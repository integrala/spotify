import 'package:flutter/material.dart';
import 'package:spotify/Theme/theme.dart';
import 'package:spotify/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenarator.routeGenerator,
      title: 'Spotify',
      theme: ThemeCustom().theme,
      //home: const Home(),
    );
  }
}
