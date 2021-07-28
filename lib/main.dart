import 'package:flutter/material.dart';
import 'package:untitled/top_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: MyColors.primary,
        primaryColor: MyColors.primary,
        fontFamily: 'Roboto'
      ),
      home: TopScreen(),
    );
  }
}
class MyColors {

  static const MaterialColor primary = MaterialColor(
    0xFFD31319,
    <int, Color>{
      50: Color(0xFFD31319),
      100: Color(0xFFD31319),
      200: Color(0xFFD31319),
      300: Color(0xFFD31319),
      400: Color(0xFFD31319),
      500: Color(0xFFD31319),
      600: Color(0xFFD31319),
      700: Color(0xFFD31319),
      800: Color(0xFFD31319),
      900: Color(0xFFD31319),
    },
  );

  static const MaterialColor greyLight = MaterialColor(
    0xFFE5E5E5,
    <int, Color>{
      50: Color(0xFFE5E5E5),
      100: Color(0xFFE5E5E5),
      200: Color(0xFFE5E5E5),
      300: Color(0xFFE5E5E5),
      400: Color(0xFFE5E5E5),
      500: Color(0xFFE5E5E5),
      600: Color(0xFFE5E5E5),
      700: Color(0xFFE5E5E5),
      800: Color(0xFFE5E5E5),
      900: Color(0xFFE5E5E5),
    },
  );
}
